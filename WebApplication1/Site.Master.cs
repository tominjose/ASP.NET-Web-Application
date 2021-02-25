using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCounter.Text = "You are visitor No." + Application["Counter"].ToString();
            Settings settings = (Settings)Application["Settings"];
            FooterLabel.Text = settings.Footer;
            headerlabel.Text = settings.Header;
        }
    }
}