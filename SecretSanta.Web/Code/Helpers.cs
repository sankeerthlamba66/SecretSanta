namespace SecretSanta.Web.Code
{
    public class Helpers
    {
        public static void InitializeDatabase()
        {
            var SantaBusiness = new Business.SantaManager();
            SantaBusiness.InitializeDatabase();
            
        }
    }
}
