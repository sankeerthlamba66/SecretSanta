using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SecretSanta.Models.ViewModels;
using SecretSanta.Models.Views;

namespace SecretSanta.Data.Ado
{
    public class EmployeeQueries
    {
        public ShowEmployee GetShowEmployeeData(string EmployeeId)
        {
            ShowEmployee ShowEmployeeDetails = new ShowEmployee();
            var connection = ConnectionManager.GetNewOpenConnection();
            try
            {
                string GetEmployeeDetailsQuery = "select top 1 * from employees where employee_number='" + EmployeeId + "'";
                SqlCommand cmdGetEmployee = new SqlCommand(GetEmployeeDetailsQuery, connection);
                var rdrEmployee = cmdGetEmployee.ExecuteReader();
                if (rdrEmployee.Read())
                {
                    ShowEmployeeDetails.EmployeeDetails.EmployeeNumber = (string)rdrEmployee["employee_number"];
                    ShowEmployeeDetails.EmployeeDetails.EmployeeName = (string)rdrEmployee["employee_name"];
                    ShowEmployeeDetails.EmployeeDetails.EmployeeEntity = (string)rdrEmployee["entity"];
                    ShowEmployeeDetails.EmployeeDetails.EmployeeEmail = (string)rdrEmployee["email"];
                    ShowEmployeeDetails.EmployeeDetails.EmployeePhone = (string)rdrEmployee["phone"];
                    
                }
                else
                {
                    ShowEmployeeDetails.EmployeeDetails.EmployeeNumber = "";
                    ShowEmployeeDetails.EmployeeDetails.EmployeeName = "";
                    ShowEmployeeDetails.EmployeeDetails.EmployeeEntity = "";
                    ShowEmployeeDetails.EmployeeDetails.EmployeeEmail = "";
                    ShowEmployeeDetails.EmployeeDetails.EmployeePhone = "";
                }
                rdrEmployee.Close();
                return ShowEmployeeDetails;
            }
            catch (Exception ex)
            {
                throw ex;
                //_logger2.LogWarn(ex.Message);
                //Console.WriteLine("Inner Exception:"+ex.Message);
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(connection);
            }

        }
        public void updateEmployeeDetails(Employee EmployeeDetails)
        {
            var connection = ConnectionManager.GetNewOpenConnection();
            string updateQuery = "Update Employees set employee_name='" + EmployeeDetails.EmployeeName + "',phone='" + EmployeeDetails.EmployeePhone + "',email='" + EmployeeDetails.EmployeeEmail + "' where employee_number='" + EmployeeDetails.EmployeeNumber + "'";
            try 
            {
                SqlCommand cmd =new SqlCommand(updateQuery, connection);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {

            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(connection);
            }
        }
        public List<Employee> AllEmployeeData()
        {
            List<Employee> employees = new List<Employee>();
            var connection = ConnectionManager.GetNewOpenConnection();
            try
            {
                
                string getEmployeeDetailsQuery = "select * from employees";
                SqlCommand cmdGetEmployee = new SqlCommand(getEmployeeDetailsQuery, connection);
                var rdrEmployee = cmdGetEmployee.ExecuteReader();
                while(rdrEmployee.Read())
                {
                    Employee employee = new Employee();
                    employee.EmployeeNumber = (string)rdrEmployee["employee_number"];
                    employee.EmployeeName = (string)rdrEmployee["employee_name"];
                    employee.EmployeeEntity = (string)rdrEmployee["entity"];
                    employee.EmployeeEmail = (string)rdrEmployee["email"];
                    employee.EmployeePhone = (string)rdrEmployee["phone"];
                    employee.ImagePath = rdrEmployee["imagePath"]==null? "":rdrEmployee["imagePath"].ToString();
                    employees.Add(employee);

                }
               
                rdrEmployee.Close();
                

            }
            catch 
            {
                
                //_logger2.LogWarn(ex.Message);
                //Console.WriteLine("Inner Exception:"+ex.Message);
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(connection);
                
            }
            return employees;

        }
        public ShowProjectDetails getProjectDetails(string EmployeeId)
        {
            ShowProjectDetails projectDetails= new ShowProjectDetails();
            var connection = ConnectionManager.GetNewOpenConnection();
            try
            {
                string GetProjectDetailsQuery = "select p.project_Id,p.Project_name,ep.Join_Date,ep.Exit_Date"+
                                                  "from Projects p inner join employeeProjects ep On p.Project_id=ep.Project_id" +
                                                  " where ep.Employee_Id= '" + EmployeeId + "'";
                SqlCommand cmdGetProjectDetails = new SqlCommand(GetProjectDetailsQuery, connection);
                var rdrProject = cmdGetProjectDetails.ExecuteReader();
                if(rdrProject.Read())
                {
                    projectDetails.ProjectId = Convert.ToInt32(rdrProject["project_Id"]);
                    projectDetails.ProjectName = (string)rdrProject["Project_name"];
                    projectDetails.JoinDate = rdrProject["Join_Date"].ToString();
                    projectDetails.ExitDate=rdrProject["Exit_Date"].ToString();

                }
                rdrProject.Close();

                return projectDetails;
            }
            catch 
            {
                throw new Exception();
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(connection);
            }
            

        }
        public void setImagePath(string employee_number,string uniqueFileName)
        {
            var connection = ConnectionManager.GetNewOpenConnection();
            string updateQuery = "Update Employees set imagepath=" + uniqueFileName + "' where employee_number='" + employee_number + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(updateQuery, connection);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(connection);
            }

        }
    }
}
