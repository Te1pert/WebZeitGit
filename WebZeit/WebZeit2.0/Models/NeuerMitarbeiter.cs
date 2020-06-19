using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Models
{
    public class NeuerMitarbeiter
    {
        public string Vorname { get; set; }
        public string Nachname { get; set; }
        public string Kurzzeichen { get; set; }
        public string Telefonnummer { get; set; }
        public int? IdAbteilung { get; set; }
        public bool IstAdmin { get; set; }
        public string Passwort { get; set; }
        public string PasswortConfirm { get; set; }
    }
}
