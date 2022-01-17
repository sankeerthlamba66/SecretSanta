using SecretSanta.Models.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta.Models
{
    public static class ModelConversions
    {
        public static Employee ToEmployee(EmployeeBase employeeBase)
        {
            return new Employee()
            {
                EmployeeId = employeeBase.EmployeeId,
                EmployeeName = employeeBase.EmployeeName,
                EmployeeEntity = employeeBase.EmployeeEntity,
                EmployeeEmail = employeeBase.EmployeeEmail,
                EmployeeNumber = employeeBase.EmployeeNumber,
                EmployeePhone = employeeBase.EmployeePhone
            };
        }
        public static EmployeeEdit ToEmployeeEdit(EmployeeBase employeeBase)
        {
            return new EmployeeEdit()
            {
                EmployeeId = employeeBase.EmployeeId,
                EmployeeName = employeeBase.EmployeeName,
                EmployeeEntity = employeeBase.EmployeeEntity,
                EmployeeEmail = employeeBase.EmployeeEmail,
                EmployeeNumber = employeeBase.EmployeeNumber,
                EmployeePhone = employeeBase.EmployeePhone
            };
        }
    }
}
