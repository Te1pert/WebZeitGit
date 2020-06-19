using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebZeit2.Pages.Nachrichtenportal
{
    public class indexModel : PageModel
    {
        [BindProperty]
        public DataTable dtNachrichten { get; set; }
        public DataTable dtUsers { get; set; }
        public bool IsDataLoaded = false;
        public bool IsFormLoaded = false;
        public bool IsMessageLoaded = false;
        public int TableMode = 0;
        [BindProperty]
        public Models.Nachricht Message { get; set; } = new Models.Nachricht();

        [BindProperty]
        public Models.Nachricht nachricht { get; set; }

        public void OnGet()
        {
            
        }
        public void OnPostReceived(string Pkz)
        {
            TableMode = 0;
            IsDataLoaded = true;
            dtNachrichten = ControllerNachrichtenportal.GetNachSend(Pkz);
        }
        public void OnPostSend(string PKz)
        {
            
            IsDataLoaded = true;
            dtNachrichten = ControllerNachrichtenportal.GetNachReceived(PKz);
        }
        public void OnPostNewMessage()
        {
            dtUsers = ControllerNachrichtenportal.GetUsers();
            IsFormLoaded = true;
            
            
        }
        public IActionResult OnPostSendMessage(string PKz)
        {
            if (Message.Text != null && Message.Empfaenger != null && Message.Betreff != null)
            {
                ControllerNachrichtenportal.SendMessage(PKz, Message);
                
            }
            return Page();
            
        }


        public void OnPostViewMessage(string Absender,string Empfaenger, string Betreff, string Text)
        {
            IsFormLoaded = false;
            IsMessageLoaded = true;
            nachricht = new Models.Nachricht()
            {
                Absender = Absender,
                Empfaenger = Empfaenger,
                Betreff = Betreff,
                Text = Text
            };

        }
    }
}