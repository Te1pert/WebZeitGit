using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TRLib;

namespace WebZeit2.Models
{
    public class ClientSession
    {

        public ClientSession(string _Kurzzeichen, string _Session)
        {
            TR_SQL_Commands.CallStoredProcedure("Insert_Session",
                new List<object>()
                {
                    _Kurzzeichen,
                    _Session
                },
                new List<string>()
                {
                    "Kurzzeichen",
                    "SessionName"
                });

        }
    }
}
