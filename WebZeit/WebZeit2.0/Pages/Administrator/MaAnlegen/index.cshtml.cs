using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebZeit2.Models;
using TRLib;

namespace WebZeit2
{
    public class MaAnlegenModel : PageModel
    {
        [BindProperty]
        public NeuerMitarbeiter NeuMitarbeiter { get; set; }
        public bool IsError = false;
        private bool PasswordsCofirmed => NeuMitarbeiter.PasswortConfirm == NeuMitarbeiter.Passwort ? true : false;

        
        public IActionResult OnPostSubmit()
        {
            if (IsAllFilled() && PasswordsCofirmed)
            {
                NutzerAnlegen();
                return Page();
            }
            else
            {
                IsError = true;
                return Page();
            }
        }

        private bool IsAllFilled()
        {
            
            if (String.IsNullOrEmpty(NeuMitarbeiter.Vorname)){ return false; }
            if (String.IsNullOrEmpty(NeuMitarbeiter.Nachname)){ return false; }
            if (String.IsNullOrEmpty(NeuMitarbeiter.Kurzzeichen)){ return false; }
            if (String.IsNullOrEmpty(NeuMitarbeiter.Passwort)){ return false; }
            if (String.IsNullOrEmpty(NeuMitarbeiter.PasswortConfirm)){ return false; }
            if (NeuMitarbeiter.IdAbteilung == null || NeuMitarbeiter.IdAbteilung == 0){ return false; }
            if (String.IsNullOrEmpty(NeuMitarbeiter.Telefonnummer)){ return false; }
            return true;
        }

        private void NutzerAnlegen()
        {
            List<string> col = new List<string>()
            {
                "_idAbteilung",
                "_Kurzzeichen",
                "_Vorname",
                "_Nachname",
                "_Telefonnummer",
                "_UserPassword",
                "_isAdmin"
            };
            List<object> par = new List<object>()
            {
                NeuMitarbeiter.IdAbteilung,
                NeuMitarbeiter.Kurzzeichen,
                NeuMitarbeiter.Vorname,
                NeuMitarbeiter.Nachname,
                NeuMitarbeiter.Telefonnummer,
                Crypto.DecryptString(NeuMitarbeiter.Passwort),
                NeuMitarbeiter.IstAdmin
            };

            try
            {
                TRLib.TR_SQL_Commands.CallStoredProcedure("Insert_Mitarbeiter", par, col);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public string ErrorMessage()
        {
            string Message;
            Message = IsAllFilled() == false ? "Bitte füllen Sie alle Felder!" :
                PasswordsCofirmed == false ? "Passwörter stimmen nicht über ein!" :
                "Unbekannter Fehler! Wenden Sie sich an Tobi!";

            Message = String.IsNullOrEmpty(Message) ? "Erfolgreich hinzugefügt!" : Message;

            return Message;
        }
    }
}