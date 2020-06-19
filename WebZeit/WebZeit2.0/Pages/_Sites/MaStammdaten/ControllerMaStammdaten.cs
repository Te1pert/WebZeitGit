using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Pages._Sites.MaStammdaten
{
    public static class ControllerMaStammdaten
    {
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
    }
}
