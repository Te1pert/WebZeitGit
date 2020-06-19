using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using TRLib;

namespace WebZeit2.Pages.Shared
{
    public static class Variables
    {
        public static string SessionID { get; set; }
        public static bool isvalid = false;
        public static bool IsUserSessionValid()
        {
            if (String.IsNullOrEmpty(SessionID))
            {
                return false;
            }
            DataTable dtSessionStamp = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_UserSessions",
                new List<object>() { SessionID },
                new List<string>() { "sessionId" });

            TimeSpan LogonTime = DateTime.Now - Convert.ToDateTime(dtSessionStamp.Rows[0]["Stamp"].ToString());
            

            if (LogonTime< new TimeSpan(8,0,0))
            {
                return true;
            }
            return false;
        }
    }
}
