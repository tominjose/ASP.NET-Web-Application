using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Settings settings = (Settings)Application["Settings"];
            LabelCounter.Text = "You are visitor No." + Application["Counter"].ToString();
            FooterLabel.Text = settings.Footer;
            headerlabel.Text = settings.Header;
            
            if (Session["UserID"]==null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!Page.IsPostBack)
            {
                TextBoxFoot.Text = settings.Footer;
                TextBoxHeader.Text = settings.Header;
                TextBoxText1.Text = settings.Text1;
                TextBoxText2.Text = settings.Text2;
            }
           
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            Response.Redirect("Default.aspx");
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            Settings settings = (Settings)Application["settings"];
            settings.Text1 = TextBoxText1.Text;
            settings.Text2 = TextBoxText2.Text;
            settings.Footer = TextBoxFoot.Text;
            settings.Header = TextBoxHeader.Text;
            Manager.SaveSettings(Server.MapPath("~/App_Data/Settings.xml"), settings);
            Application["settings"] = settings;
            LabelSave.Text = "The entered data has been saved successfully";
        }
    }
}