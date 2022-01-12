using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SecretSanta.Models.Views
{
    internal class EmployeeProjects
    {
        
        public int ProjectId {get;set;}
        public DateOnly JoinDate {get;set;}
        public DateOnly ExitDate {get;set;}

        public int EmployeeId { get; set; }
        public Employee employee { get; set; }

    }
}
