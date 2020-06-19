using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Data;
using WebZeit2.Models;
using WebZeit2.Pages;

namespace WebZeit2
{
    public class Program
    {
        public static void Main(string[] args)
        {
            MainController.Abteilungen = MainController.GetAbteilungen();
            CreateHostBuilder(args).Build().Run();
        }

        

        


        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });

       
    }
}
