using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebZeit2
{
    public class AdministratorModel : PageModel
    {
        public static void OnGet()
        {

        }
        public IActionResult OnPostMaAnlegen()
        {
            return RedirectToPage(@"/Administrator/MaAnlegen/index");
        }
    }
}