using Microsoft.AspNetCore.Mvc;
using SecretSanta.Business;
using SecretSanta.Models.ViewModels;
using SecretSanta.Models.Views;
using SecretSanta.Web.Models;
using System.Diagnostics;
using SecretSanta.Web.Code;

namespace SecretSanta.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public HomeController(ILogger<HomeController> logger, IWebHostEnvironment webHostEnvironment)
        {
            _logger = logger;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Route("/Home/GetSanta")]
        [Route("/Home/ShowSanta")]
        [IgnoreAntiforgeryToken]
        public IActionResult ShowSanta(string? EmployeeId)
        {
            try
            {
                EmployeeId = !string.IsNullOrWhiteSpace(Session.EmployeeId) ? Session.EmployeeId : EmployeeId;

                var ShowSantaDetails = new Business.SantaManager().GetShowSantaData(EmployeeId);

                if (ShowSantaDetails.SantaDetails.EmployeeName == "")
                {
                    throw new Exception();
                }
                else
                {
                    Session.EmployeeId = EmployeeId;
                    return View(ShowSantaDetails);
                }
            }
            catch (Exception ex)
            {
                //_logger2.LogError(ex.ToString());
                return View(BadRequest());
            }
        }

        [HttpGet]
        [Route("/Home/GetEmployeeDetails")]
        [IgnoreAntiforgeryToken]
        public IActionResult GetEmployeeDetails()
        {
            if(Session.EmployeeId == null)
            {
                return BadRequest();
            }
            var ShowEmployeeDetails = new EmployeeManager().GetShowEmployeeData(Session.EmployeeId);
            return View(ShowEmployeeDetails);
        }

        [HttpGet("/Home/EditEmployeeDetails")]
        public IActionResult EditEmployeeDetails()
        {
            var showEmployeeDetails = new EmployeeManager().GetShowEmployeeData(Session.EmployeeId);
            
            return View(showEmployeeDetails);
        }

        [HttpPost]
        public ActionResult EditEmployeeDetails(Employee EmployeeDetails)
        {
            EmployeeDetails.EmployeeNumber = Session.EmployeeId;

            new EmployeeManager().updateEmployeeDetails(EmployeeDetails);

            GetEmployeeDetails();
            
            return View("GetEmployeeDetails");

        }
        public IActionResult AllEmployeeDetails()
        {
            return View();
        }

        public PartialViewResult AllEmployeeTable()
        {
            return PartialView("_AllEmployeeTable", new EmployeeManager().AllEmployeeData());
        }

        public PartialViewResult AllEmployeeCards()
        {
            return PartialView("_AllEmployeeCards", new EmployeeManager().AllEmployeeData());
        }
        [HttpGet("/projectDetails")]
        public PartialViewResult getProjectDetails()
        {
            return PartialView("", new EmployeeManager().getProjectDetails(Session.EmployeeId));
        }
        [HttpPost("/UploadProfile")]
        //public async Task<IActionResult>  UploadProfile(IFormFile profileImage)
        //{
            
            
        //}

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}