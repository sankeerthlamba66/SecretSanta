using SecretSanta.Business;

namespace SecretSanta.Web.Code
{
    public static class Helpers
    {
        public static void InitializeDatabase()
        {
            var SantaBusiness = new Business.SantaManager();
            SantaBusiness.InitializeDatabase();   
        }

        public static string UploadProfile(IFormFile profileImage, string UploadFolderPath)
        {
            string uniqueFileName = string.Empty;
            string filePath = string.Empty;

            if (profileImage != null)
            {
                uniqueFileName = Guid.NewGuid().ToString() + "_" + profileImage.FileName;
                filePath = Path.Combine(UploadFolderPath, uniqueFileName);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    profileImage.CopyTo(fileStream);
                }
            }

            return filePath;
        }
    }
}
