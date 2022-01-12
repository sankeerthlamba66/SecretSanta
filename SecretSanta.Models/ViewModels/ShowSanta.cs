using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SecretSanta.Models.Views;

namespace SecretSanta.Models.ViewModels
{
    public class ShowSanta
    {
        public ShowSanta()
        {
            SantaDetails = new Employee();
        }
        public string EmployeeName { get; set; }
        public Employee SantaDetails { get; set; }
    }
}
