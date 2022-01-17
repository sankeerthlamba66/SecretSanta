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

        public Employee GetEmployee(string EmployeeId)
        {
            var showEmployeeData = new Data.Ado.EmployeeQueries();
            return showEmployeeData.GetEmployee(EmployeeId);
        }

        public EmployeeEdit GetEmployeeEdit(string EmployeeId)
        {
            var showEmployeeData = new Data.Ado.EmployeeQueries();
            return showEmployeeData.GetEmployeeEdit(EmployeeId);
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
    }
}
