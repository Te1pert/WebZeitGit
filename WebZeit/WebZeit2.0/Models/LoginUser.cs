using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Models
{
    public class LoginUser
    {
        public string Kurzzeichen { get; set; }
        public string Passwort { get; set; }
        public string Vorname { get; set; }
        public string Nachname { get; set; }
        public int IdAbteilung { get; set; }
        public string Telefonnummer { get; set; }
        public int IdPersonal { get; set; }

        public int AnwesendStatus { get; set; }

    }
}
