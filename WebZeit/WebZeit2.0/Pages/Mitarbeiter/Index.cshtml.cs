using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebZeit2.Models;
using WebZeit2.Pages;
using Microsoft.AspNetCore.Http;
using System.Data;

namespace WebZeit2.Pages.Mitarbeiter
{
    public class IndexModel : PageModel
    {
        [BindProperty]
        public DataTable dtMitarbeiters { get; set; }
        public string AnwColor{ get; set; }
        
        [BindProperty]
        public string InputSearch { get; set; }
        public async void OnGet()
        {
            if (HttpContext.Session.GetInt32("IsLoggedIn") == 1)
            {
                dtMitarbeiters = ControllerMitarbeiter.GetMitarbeiter(HttpContext.Session.GetInt32("Pid"));
            }
        }

        public IActionResult OnPostMaSearch()
        {
            dtMitarbeiters = ControllerMitarbeiter.GetMitarbeiterBySearch(InputSearch);
            return Page();
            
        }
        
        public IActionResult OnPostStamm(int PId)
        {
             
            return RedirectToPage(@"/_Sites/MaStammdaten/Index", new {PersonalId = PId });
        }

        
    }
}
