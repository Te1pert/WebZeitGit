using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebZeit2.Models;

namespace WebZeit2.Pages.Mitarbeiter
{
    public class ControllerMitarbeiter
    {
        //public static Models.Mitarbeiter[] Mitarbeiters(int? Pid)
        //{
        //    DataTable dtMitarbeiter = GetMitarbeiter(Pid);
        //    Models.Mitarbeiter[] ListMitarbeiter = new Models.Mitarbeiter[dtMitarbeiter.Rows.Count];

        //    for (int i = 0; i < ListMitarbeiter.Length; i++)
        //    {
        //        ListMitarbeiter[i] = new Models.Mitarbeiter
        //            (
        //                dtMitarbeiter.Rows[i]["Vorname"].ToString(),
        //                dtMitarbeiter.Rows[i]["Nachname"].ToString(),
        //                dtMitarbeiter.Rows[i]["Abteilungsname"].ToString(),
        //                dtMitarbeiter.Rows[i]["Telefonnummer"].ToString(),
        //                Convert.ToInt32(dtMitarbeiter.Rows[i]["idPersonal"].ToString()),
        //                Convert.ToInt32(dtMitarbeiter.Rows[i]["AnwesendStatus"].ToString())
        //            );
        //    }
        //    return ListMitarbeiter;
        //}

        public static DataTable GetMitarbeiter(int? Pid)
        {
            DataTable dt = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_MaAbteilung_ByPid",
                new List<object>() { Pid },
                new List<string>() { "Pid" });
            return dt;
        }

        public static DataTable GetMitarbeiterBySearch(string SearchString)
        {
            DataTable dt = TRLib.TR_SQL_Commands.ReturnStoredProcedureValue(
                "Select_Mitarbeiter_BySearch",
                new List<object>() { SearchString },
                new List<string>() { "SearchString" });

            return dt;
        }
    }
}
