using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebZeit2.Models;

namespace WebZeit2.Pages
{
    public class MainController
    {
        public static bool IsLoggedIn = false;
        public static bool IsAdmin;
        public static WebZeit2.Models.LoginUser LoginUser;
        public static string AnwStatus = "";
        public static string AnwStatusColor = "";
        public static Abteilung[] Abteilungen;

        public static void SetAnwStatus(int Value)
        {
            switch (Value)
            {
                case 0:
                    AnwStatus = "Abwesend";
                    AnwStatusColor = "red";
                    break;
                case 1:
                    AnwStatus = "Anwesend";
                    AnwStatusColor = "green";
                    break;

                case 2:
                    AnwStatus = "Pause";
                    AnwStatusColor = "orange";
                    break;


            }
        }


        public static string GetTime()
        {
            List<string> col = new List<string>() { "PId" };
            List<object> par = new List<object>() { LoginUser.IdPersonal };
            int TimeValueSeconds = Convert.ToInt32(TRLib.TR_SQL_Commands.ReturnStoredProcedureValue("SELECT_CurrentTime", par, col).Rows[0][0].ToString());
            TimeSpan time = TimeSpan.FromSeconds(TimeValueSeconds);
            return time.ToString(@"hh\:mm");
        }

        public static Abteilung[] GetAbteilungen()
        {

            DataTable dt = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_Abteilung",
                new List<object>() { },
                new List<string> { });
            Abteilung[] Abs = new Abteilung[dt.Rows.Count];

            for (int i = 0; i < Abs.Length; i++)
            {
                Abs[i] = new Abteilung(Convert.ToInt32(dt.Rows[i][0].ToString()), dt.Rows[i][1].ToString());
            }

            return Abs;

        }
    }
}
