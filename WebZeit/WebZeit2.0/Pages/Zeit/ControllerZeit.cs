using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TRLib;
using Microsoft.AspNetCore.Http;
using System.Data;

namespace WebZeit2.Pages.Zeit
{
    public static class ControllerZeit
    {
        public static int GetStatusAnwesendheit(int? Pid)
        {
            int id = Convert.ToInt32(TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_StatusAnwesendheit",
                new List<object>() { Pid },
                new List<string>() { "Pid" })
                .Rows[0]["AnwesendStatus"].ToString());
            return id;

        }

        public static DataTable GetZeitnachweise(int? PId)
        {
            try
            {
                return TRLib.TR_SQL_Commands.ReturnStoredProcedureValue
                    (
                        "SELECT_Zeitnachweise_ByPId",
                        new List<object>() { PId },
                        new List<string>() { "PId" }
                    );
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static void SetStempel(int? Pid)
        {
            //int? status = 0;
            //switch (Pid)
            //{
            //    case 0:
            //        status = 1;
            //       break;
            //    case 1:
            //        status = 0;
            //        break;
            //    default:
                    
            //        break;
            //}
            TR_SQL_Commands.CallStoredProcedure("Update_Stamp_ByPId",
                new List<object>() {Pid},
                new List<string>() {"Pid"});

            
        }
       

    }
}
