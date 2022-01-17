using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta.Models.Views
{
    public class EmployeeEdit : EmployeeBase
    {
        [Display(Name = "Profile Image")]
        public IFormFile profileImage { get; set; }
    }
}
