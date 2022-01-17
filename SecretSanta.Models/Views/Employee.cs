﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta.Models.Views
{
    public class Employee : EmployeeBase
    {
        [Display(Name = "Profile Image")]
        public string ImagePath { get; set; }
    }

}
