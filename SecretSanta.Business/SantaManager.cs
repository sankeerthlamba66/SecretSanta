using SecretSanta.Models.ViewModels;

namespace SecretSanta.Business
{
    public class SantaManager
    {
        public void InitializeDatabase()
        {
            var SantaData = new Data.Ado.SantaQueries();
            
            //Check if all emloyees are allocated a santa
            if (SantaData.AreSantasAllocatedToAllEmployees() == false)
            {
                while (true)
                {
                    // Get next unallocated employee
                    var strNextEmployeeNumber = SantaData.GetNextUnallocatedEmployeeNumber();

                    if (string.IsNullOrEmpty(strNextEmployeeNumber))
                    {
                        break;
                    }
                    else
                    {
                        // Get all santa-eligible employees
                        var lstEligibleSantas = SantaData.GetAllEligibleSantaNumbers(strNextEmployeeNumber);

                        Random objRandomStr = new Random();
                        int iRandomNumber = objRandomStr.Next(lstEligibleSantas.Count());
                        string strNextSanta = lstEligibleSantas[iRandomNumber];

                        // Allocate the santa to employee
                        var iSantaAllocated = SantaData.AllocateSantaToEmployee(strNextSanta, strNextEmployeeNumber);
                    }
                }
            }
        }

        public ShowSanta GetShowSantaData(string EmployeeId)
        {
            var SantaData = new Data.Ado.SantaQueries();
            return SantaData.GetShowSantaData(EmployeeId);
        }


    }
}