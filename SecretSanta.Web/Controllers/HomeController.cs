using Microsoft.AspNetCore.Mvc;
using SecretSanta.Business;
using SecretSanta.Models.ViewModels;
using SecretSanta.Models.Views;
using SecretSanta.Web.Models;
using System.Diagnostics;
using SecretSanta.Web.Code;
using SecretSanta.Models.Logger;
using NLog;
using Microsoft.Extensions.Logging;

namespace SecretSanta.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        public readonly ILoggerManager _logger1;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public HomeController(ILogger<HomeController> logger, IWebHostEnvironment webHostEnvironment, ILoggerManager logger1)
        {
            _logger = logger;
            _logger1= logger1;
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
                _logger1.LogError(ex.ToString());
                return View("ErrorLog", );
            }
        }

        [HttpGet]
        [Route("/Home/GetEmployeeDetails")]
        [IgnoreAntiforgeryToken]
        public IActionResult GetEmployeeDetails()
        {
            try
            {
                if (Session.EmployeeId == null)
                {
                    return BadRequest();
                }
                var EmployeeDetails = new EmployeeManager().GetShowEmployeeData(Session.EmployeeId);
                return View(EmployeeDetails);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        [HttpGet("/Home/EditEmployeeDetails")]
        public IActionResult EditEmployeeDetails()
        {
            try
            {
                var employeeDetails = new EmployeeManager().GetEmployeeEdit(Session.EmployeeId);

                EmployeeEdit employeeEdit = (EmployeeEdit)(EmployeeBase)employeeDetails;

                return View(employeeEdit);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        [HttpPost]
        public ActionResult EditEmployeeDetails(EmployeeEdit EmployeeDetails)
        {
            try
            {
                EmployeeDetails.EmployeeNumber = Session.EmployeeId;

                var strNewFilePath = Code.Helpers.UploadProfile(EmployeeDetails.profileImage, Path.Combine(_webHostEnvironment.WebRootPath, "/images"));

                Employee employee = SecretSanta.Models.ModelConversions.ToEmployee(EmployeeDetails);
                employee.ImagePath = strNewFilePath;

                new EmployeeManager().updateEmployeeDetails(employee);

                return RedirectToAction("GetEmployeeDetails");
            }
            catch (Exception ex)
            {

            }
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