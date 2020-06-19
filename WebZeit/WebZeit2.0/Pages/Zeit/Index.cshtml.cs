using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using TRLib;
using WebZeit2.Pages;
using WebZeit2.Pages.Zeit;
using Microsoft.AspNetCore.Http;
using System.Data;

namespace WebZeit2
{
    public class IndexModel : PageModel
    {
        [BindProperty]
        public DataTable dtZeiten { get; set; }
         
        public void OnGet()
        {
            dtZeiten = ControllerZeit.GetZeitnachweise(HttpContext.Session.GetInt32("Pid"));
        }

        public IActionResult OnPostStempeln(int? Pid)
        {
            ControllerZeit.SetStempel(Pid);
            SetPropAnwStatusColor(ControllerZeit.GetStatusAnwesendheit(Pid));
            dtZeiten = ControllerZeit.GetZeitnachweise(HttpContext.Session.GetInt32("Pid"));
            return Page();

        }

        public IActionResult OnPostPause()
        {
            return Page();
        }

        public void SetPropAnwStatusColor(int status)
        {
            switch (status)
            {
                case 0:
                    HttpContext.Session.SetString("AnwStatusColor", "red");
                    HttpContext.Session.SetString("AnwStatus", "Abwesend");
                    break;
                case 1:
                    HttpContext.Session.SetString("AnwStatusColor", "green");
                    HttpContext.Session.SetString("AnwStatus", "Anwesend");
                    break;
                default:
                    break;
            }
        }
    }
}