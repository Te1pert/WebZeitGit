using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Models
{
    public class Abteilung
    {
        public Abteilung(int idAbteilung, string nameAbteilung)
        {
            IdAbteilung = idAbteilung;
            NameAbteilung = nameAbteilung;
        }

        public int IdAbteilung { get; set; }
        public string NameAbteilung { get; set; }


    }
}
