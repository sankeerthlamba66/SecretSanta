using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;

namespace SecretSanta.Models.Views
{
    public class EmployeeBase
    {
        [Key]
        public int EmployeeId { get; set; }

        [Display(Name = "Full Name")]
        public string EmployeeName { get; set; }
        
        [Display(Name = "Emp Number")]
        public string EmployeeNumber { get; set; }

        [Display(Name = "Company")]
        public string EmployeeEntity { get; set; }

        [Display(Name = "Phone Number")]
        public string EmployeePhone { get; set; }

        [Display(Name = "Email Id")]
        public string EmployeeEmail { get; set; }
    }
}
