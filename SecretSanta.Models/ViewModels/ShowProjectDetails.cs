using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta.Models.ViewModels
{
    public class ShowProjectDetails
    {
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }
        public string JoinDate { get; set; }
        public string ExitDate { get; set; }
    }
}
