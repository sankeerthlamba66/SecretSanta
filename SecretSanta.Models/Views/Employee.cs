using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;

namespace SecretSanta.Models.Views
{
    public class Employee
    {
        [Key]
        public int EmployeeId { get; set; }

        public string EmployeeName { get; set; }
        public string EmployeeNumber { get; set; }
        
        public string EmployeeEntity { get; set; }
        public string EmployeePhone { get; set; }
        public string EmployeeEmail { get; set; }
        public string ImagePath { get; set; }
        public IFormFile profileImage { get; set; }
    }
}
