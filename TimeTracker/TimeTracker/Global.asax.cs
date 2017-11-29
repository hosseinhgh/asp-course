using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

using System.Data.Entity;
using TimeTracker.Models;

//the global force the application to start - show the error and what to do incase of error
//we initialize data base here
namespace TimeTracker
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //tells to initial database

           // Database.SetInitializer(new TimeTrackerDbContextInitializer());
            Database.SetInitializer(new TimeTrackerDbContextInitializer());
          
        }
    }
}
