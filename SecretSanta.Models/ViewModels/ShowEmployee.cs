using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using SecretSanta.Models.Views;


namespace SecretSanta.Models.ViewModels
{
    public class ShowEmployee
    {
        public ShowEmployee()
        {
            this.EmployeeDetails = new Employee();
        }
        public Employee EmployeeDetails{ get; set; }
        public IFormFile profileImage { get; set; }
    }
}
