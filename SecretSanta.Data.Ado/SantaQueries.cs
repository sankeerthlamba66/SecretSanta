using System.Data.SqlClient;
using SecretSanta.Models.ViewModels;

namespace SecretSanta.Data.Ado
{
    public class SantaQueries
    {
        public bool AreSantasAllocatedToAllEmployees()
        {
            var Conn = ConnectionManager.GetNewOpenConnection();

            try
            {
                string strQuery = "select count(*) from employees where santa_number is null";
                int iUnallocatedEmpCount = 0;

                SqlCommand Cmd = new SqlCommand(strQuery, Conn);
                iUnallocatedEmpCount = (int)Cmd.ExecuteScalar();

                //if (iUnallocatedEmpCount > 0)
                //{ return false; }
                //else
                //{ return true; }

                return !(iUnallocatedEmpCount > 0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(Conn);
            }
        }

        public string GetNextUnallocatedEmployeeNumber()
        {
            var Conn = ConnectionManager.GetNewOpenConnection();

            try
            {
                string strGetNextEmployeeQuery = "select top 1 employee_number from employees where santa_number is null";
                string strNextEmployee = string.Empty;

                SqlCommand Cmd = new SqlCommand(strGetNextEmployeeQuery, Conn);

                strNextEmployee = (string)Cmd.ExecuteScalar();

                return strNextEmployee;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(Conn);
            }
        }

        public List<string> GetAllEligibleSantaNumbers(string NextEmployee)
        {
            var Conn = ConnectionManager.GetNewOpenConnection();
            SqlDataReader? rdrEligibleSantas = null;
            try
            {
                string strGetEligibleSantasQuery = "select employee_number from employees where employee_number != '" + NextEmployee + "' and employee_number not in (select santa_number from employees where santa_number is not null)";
                List<string> lstEligibleSantas = new List<string>();

                SqlCommand cmdGetEligibleSantasQuery = new SqlCommand(strGetEligibleSantasQuery, Conn);
                rdrEligibleSantas = cmdGetEligibleSantasQuery.ExecuteReader();

                while (rdrEligibleSantas.Read())
                {
                    lstEligibleSantas.Add((string)rdrEligibleSantas["employee_number"]);
                }

                return lstEligibleSantas;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectionManager.CloseReaderIfOpen(rdrEligibleSantas);
                ConnectionManager.CloseConnectionIfOpen(Conn);
            }
        }

        public int AllocateSantaToEmployee(string NextSantaNumber, string EmployeeNumber)
        {
            var Conn = ConnectionManager.GetNewOpenConnection();

            try
            {
                string strAllocateNextSantaQuery = "update employees set santa_number='" + NextSantaNumber + "' where employee_number='" + EmployeeNumber + "'";
                SqlCommand cmdAllocateNextSantaQuery = new SqlCommand(strAllocateNextSantaQuery, Conn);
                return cmdAllocateNextSantaQuery.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(Conn);
            }
        }

        public ShowSanta GetShowSantaData(string EmployeeId)
        {
            var Conn = ConnectionManager.GetNewOpenConnection();

            try
            {
                ShowSanta ShowSantaDetails = new ShowSanta();

                string strGetSantaQuery = "select top 1 * from employees where santa_number='" + EmployeeId + "'";
                SqlCommand cmdGetSanta = new SqlCommand(strGetSantaQuery, Conn);
                var rdrSanta = cmdGetSanta.ExecuteReader();
                if (rdrSanta.Read())
                {
                    ShowSantaDetails.SantaDetails.EmployeeNumber = (string)rdrSanta["employee_number"];
                    ShowSantaDetails.SantaDetails.EmployeeName = (string)rdrSanta["employee_name"];
                    ShowSantaDetails.SantaDetails.EmployeeEntity = (string)rdrSanta["entity"];
                    ShowSantaDetails.SantaDetails.EmployeePhone = (string)rdrSanta["phone"];
                    ShowSantaDetails.SantaDetails.EmployeeEmail = (string)rdrSanta["email"];
                    //ShowSantaDetails.SantaDetails.ImagePath = (string)rdrSanta["imagePath"];
                }
                else
                {
                    ShowSantaDetails.SantaDetails.EmployeeNumber = "";
                    ShowSantaDetails.SantaDetails.EmployeeName = "";
                    ShowSantaDetails.SantaDetails.EmployeeEntity = "";
                    ShowSantaDetails.SantaDetails.EmployeePhone = "";
                    ShowSantaDetails.SantaDetails.EmployeeEmail = "";
                    //ShowSantaDetails.SantaDetails.ImagePath = "";
                }
                rdrSanta.Close();

                string strGetEmployeeName = "select top 1 employee_name from employees where employee_number='" + EmployeeId + "'";
                SqlCommand cmdGetEmployeeName = new SqlCommand(strGetEmployeeName, Conn);
                var rdrEmployeeName = cmdGetEmployeeName.ExecuteReader();
                if (rdrEmployeeName.Read())
                {
                    ShowSantaDetails.EmployeeName = (string)rdrEmployeeName["employee_name"];
                }
                else
                {
                    ShowSantaDetails.EmployeeName = "";
                }
                rdrEmployeeName.Close();

                return ShowSantaDetails;
            }
            catch (Exception ex)
            {
                throw ex;
                //_logger2.LogWarn(ex.Message);
                //Console.WriteLine("Inner Exception:" + ex.Message);
            }
            finally
            {
                ConnectionManager.CloseConnectionIfOpen(Conn);
            }
        }
       
    }
}
