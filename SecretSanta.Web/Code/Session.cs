using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
namespace SecretSanta.Web.Code
{
    public static class Session
    {
        private static string GetSessionString(string SessionKey)
        {
            byte[]? SessionVal = GetSessionValue(SessionKey);

            return SessionVal is not null ? System.Text.Encoding.ASCII.GetString(SessionVal) : string.Empty;
        }

        private static byte[]? GetSessionValue(string SessionKey)
        {
            byte[]? SessionValue = null;
            var CurrentContext = new HttpContextAccessor().HttpContext;

            if (CurrentContext is not null)
            {
                SessionValue = CurrentContext.Session.Get(SessionKey);
            }

            return SessionValue;
        }

        private static void SetSessionString(string SessionKey, string SessionValue)
        {
            SetSessionValue(SessionKey, System.Text.Encoding.ASCII.GetBytes(SessionValue));
        }

        private static void SetSessionValue(string SessionKey, byte[] SessionValue)
        {
            var CurrentContext = new HttpContextAccessor().HttpContext;

            if (CurrentContext is not null)
            {
                CurrentContext.Session.Set(SessionKey, SessionValue);
            }
        }

        public static string EmployeeId
        {
            get
            {
                return GetSessionString("EmployeeId");
            }
            set
            {
                SetSessionString("EmployeeId", value);
            }
        }
    }
}
