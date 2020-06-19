using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Pages.Nachrichtenportal
{
    public class ControllerNachrichtenportal
    {
        public static DataTable GetNachSend(string PKz)
        {
            DataTable dt = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_Messages_Sent",
                new List<object>() { PKz },
                new List<string>() { "PKz" });
            return dt;
        }
        public static DataTable GetNachReceived(string PKz)
        {
            DataTable dt = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_Messages_Received",
                new List<object>() { PKz },
                new List<string>() { "PKz" });
            return dt;
        }
        public static void SendMessage(string PKz,Models.Nachricht nachricht)
        {
            TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Insert_Message",
                new List<object>()
                {
                    PKz,
                    nachricht.Empfaenger,
                    nachricht.Betreff,
                    nachricht.Text
                },
                new List<string>()
                {
                    "PAbsenderKz",
                    "PEmpfaengerKz",
                    "PBetreff",
                    "PNachrichtText"
                }
                );

        }
        public static DataTable GetUsers()
        {
            DataTable dt = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_Kz_All",
                new List<object>() { },
                new List<string>() { });
            return dt;
        }

        public static Models.MessageTable GetViewMessage(DataRow message)
        {
            Models.MessageTable mes = new Models.MessageTable()
            {
                Text = message[2].ToString(),
                Betreff = message[1].ToString(),
                Empfaenger = message[0].ToString()
            };

            return mes;
            
        }
    }
}
