using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Settings settings = (Settings)Application["Settings"];
            LabelCounter.Text = "You are visitor No." + Application["Counter"].ToString();
            FooterLabel.Text = settings.Footer;
            headerlabel.Text = settings.Header;
        }

        protected void Buttonsubmit_Click(object sender, EventArgs e)
        {
            string UserName = WebConfigurationManager.AppSettings["PFUserName"];
            string Password = WebConfigurationManager.AppSettings["PFPassWord"];
            if(TextBoxUsername.Text==UserName||TextBoxPass.Text==Password)
            {
                Session.Add("UserID", UserName);
                Response.Redirect("Admin.aspx");
            }
            else
            {
                LabelMessage.Text = "Please Enter valid UserName and Password";
            }
        }
    }
}