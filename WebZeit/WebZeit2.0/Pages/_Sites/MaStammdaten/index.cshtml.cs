using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebZeit2.Models;
using WebZeit2.Pages._Sites.MaStammdaten;

namespace WebZeit2
{
    public class indexModel : PageModel
    {
        private int _PersonalId;
        [BindProperty]
        public DataTable dtZeiten { get; set; }
        [BindProperty]
        public string AnwColor { get; set; }


        public Stammdaten stammdaten { get; set; }

        public void OnGet(int PersonalId)
        {
            dtZeiten = ControllerMaStammdaten.GetZeitnachweise(PersonalId);

            this._PersonalId = PersonalId;
            stammdaten = new Stammdaten(_PersonalId);
        }


    }
}