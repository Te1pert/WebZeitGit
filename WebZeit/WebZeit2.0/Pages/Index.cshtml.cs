using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using WebZeit2.Models;
using Microsoft.AspNetCore.Razor.TagHelpers;
using TRLib;
using System.Data;
using Microsoft.AspNetCore.Http;
using WebZeit2.Pages.Zeit;

namespace WebZeit2.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        [BindProperty]
        public LoginUser Login { get; set; }

        [BindProperty]
        public string ErrorMessage { get; set; } 
        public bool IsError { get; set; } = false;



        //[BindProperty]
        //public WebZeit2.Models.Mitarbeiter Mitarbeiter { get; set; }


        public IndexModel(ILogger<IndexModel> logger)
        {
            
            _logger = logger;
        }

        public bool FormIsFilled => !String.IsNullOrEmpty(Login.Kurzzeichen) && !String.IsNullOrEmpty(Login.Passwort);

        public IActionResult OnPost()
        {
            

            Shared.Variables.SessionID = HttpContext.Session.Id;

            if (ModelState.IsValid == true)
            {
                if (FormIsFilled)
                {
                    if (AuthenticationSuccess())
                    {
                        HttpContext.Session.SetString("Kurzzeichen", Login.Kurzzeichen);
                        HttpContext.Session.SetInt32("IsLoggedIn", 1);

                        return RedirectToPage("/Mitarbeiter/Index");
                    }
                    else
                    {
                        IsError = true;
                        ErrorMessage = "Falsches Passwort oder Benutzername!";
                        return Page();

                    }

                }
                else
                {
                    IsError = true;
                    ErrorMessage = "Bitte alle Felder befüllen!";
                    return Page();
                }

            }
            return Page();
            
        }
        
        

        private bool AuthenticationSuccess()
        {
            List<object> par = new List<object>()
            {
                Login.Kurzzeichen
            };
            List<string> col = new List<string>()
            {
                "Kz"
            };

            DataTable dt = TR_SQL_Commands.ReturnStoredProcedureValue("Select_PData_ByKz", par, col);
            if (dt.Rows.Count != 0)
            {
                if (Crypto.EncryptString(dt.Rows[0]["UserPassword"].ToString()) == Login.Passwort)
                {
                    HttpContext.Session.SetInt32("IsAdmin",
                        (dt.Rows[0]["IsAdmin"].ToString() == "1") ? 1 : 0);
                    HttpContext.Session.SetString("LayoutPage",
                        (dt.Rows[0]["IsAdmin"].ToString() == "1") ? "~/Pages/Shared/_LayoutAdmin.cshtml" : "~/Pages/Shared/_Layout.cshtml");
                    HttpContext.Session.SetInt32("Pid",
                        Convert.ToInt32((dt.Rows[0]["idPersonal"].ToString())));
                    HttpContext.Session.SetString("AnwStatusColor",
                        ControllerZeit.GetStatusAnwesendheit(HttpContext.Session.GetInt32("Pid")) == 0 ? "red" : "green");
                    HttpContext.Session.SetString("AnwStatus",
                        ControllerZeit.GetStatusAnwesendheit(HttpContext.Session.GetInt32("Pid")) == 0 ? "Abwesend" : "Anwesend");


                    return true;

                }
                
            }
            return false;
        }

        private void LoadUserData()
        {
            List<object> par = new List<object>()
            {
                Login.Kurzzeichen
            };
            List<string> col = new List<string>()
            {
                "PKz"
            };

            DataTable dt = TR_SQL_Commands.ReturnStoredProcedureValue("Select_LoginUser", par, col);
            Login.Vorname = dt.Rows[0]["Vorname"].ToString();
            Login.Nachname = dt.Rows[0]["Nachname"].ToString();
            Login.Telefonnummer = dt.Rows[0]["Telefonnummer"].ToString();
            Login.IdPersonal = Convert.ToInt32(dt.Rows[0]["idPersonal"].ToString());
            Login.IdAbteilung = Convert.ToInt32(dt.Rows[0]["idAbteilung"].ToString());
            Login.AnwesendStatus = Convert.ToInt32(dt.Rows[0]["AnwesendStatus"].ToString());

        }

    }
}
