using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SecretSanta.Models.Views
{
    internal class Projects
    {
        [Key]
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }
        public string projectDescription { get; set; }


        
    }
}
