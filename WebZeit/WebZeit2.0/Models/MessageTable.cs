using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace WebZeit2.Models
{
    public class MessageTable : DataTable
    {
        public MessageTable()
        {

        }
        public string Betreff { get; set; }
        public string Empfaenger { get; set; }
        public string Text { get; set; }
    }
}
