using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            String username = (String)Application["username"];
            String password = (String)Application["password"];
            Settings settings = Manager.LoadSettings(Server.MapPath("~/App_Data/Settings.xml"));
            Application.Add("Settings", settings);
        }
        void Session_Start(object sender,EventArgs e)
        {
            if(Application["Counter"]==null)
            {
                Application.Add("Counter", 0);
            }
            int iCounter = Convert.ToInt32(Application["Counter"]);
            iCounter++;
            Application["Counter"] = iCounter.ToString();
        }
    }
}