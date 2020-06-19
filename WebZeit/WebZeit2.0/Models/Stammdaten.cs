using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using TRLib;

namespace WebZeit2.Models
{
    public class Stammdaten
    {
        public int PId { get; set; }
        public string Kurzzeichen { get; set; }
        public string Vorname { get; set; }
        public string Nachname { get; set; }
        public string Abteilung { get; set; }
        public string Telefonnummer { get; set; }
        public string Anwesend { get; set; }
        

        public Stammdaten(int PId)
        {
            List<string> col = new List<string>()
            {
                "PId"
            };
            List<object> par = new List<object>()
            {
                PId
            };
            DataTable dt = TR_SQL_Commands.ReturnStoredProcedureValue("Select_Stammdaten_ByPId", par, col);

            this.PId = Convert.ToInt32(dt.Rows[0]["idPersonal"].ToString());
            this.Kurzzeichen = dt.Rows[0]["Kurzzeichen"].ToString();
            this.Vorname = dt.Rows[0]["Vorname"].ToString();
            this.Nachname = dt.Rows[0]["Nachname"].ToString();
            this.Abteilung = dt.Rows[0]["Abteilungsname"].ToString();
            this.Telefonnummer = dt.Rows[0]["Telefonnummer"].ToString();
            this.Anwesend = dt.Rows[0]["AnwesendStatus"].ToString() == "1" ? "Anwesend" : dt.Rows[0]["AnwesendStatus"].ToString() == "2" ? "Pause" : "Abwesend";


        }
        

    }
}
