using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Models
{
    public class Nachricht
    {
        public Nachricht()
        {

        }
        public string Absender { get; set; }
        public string Betreff { get; set; }
        public string Empfaenger { get; set; }
        public string Text { get; set; }
    }
}
