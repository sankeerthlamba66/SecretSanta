using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SecretSanta.Models.ViewModels;
using SecretSanta.Models.Views;

namespace SecretSanta.Business
{
    public class EmployeeManager
    {
        public ShowEmployee GetShowEmployeeData(string EmployeeId)
        {
            var showEmployeeData = new Data.Ado.EmployeeQueries();
            return showEmployeeData.GetShowEmployeeData(EmployeeId);
        }
        public void updateEmployeeDetails(Employee EmployeeDetails)
        {
            new Data.Ado.EmployeeQueries().updateEmployeeDetails(EmployeeDetails);
        }
        public List<Employee> AllEmployeeData()
        {
           return new Data.Ado.EmployeeQueries().AllEmployeeData();
        }
        public ShowProjectDetails getProjectDetails(string EmployeeId)
        {
            return new Data.Ado.EmployeeQueries().getProjectDetails(EmployeeId);
        }
        public void setImagePath(string EmployeeNumber, string uniqueFileName)
        {    new Data.Ado.EmployeeQueries().setImagePath(EmployeeNumber,uniqueFileName);
        }
    }
}
