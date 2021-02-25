using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Settings settings = (Settings)Application["Settings"];
                LabelText1.Text = settings.Text1;
                Session["CheckRefresh"] = Server.UrlDecode(System.DateTime.Now.ToString());
            }
            catch
            {

            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Settings settings = (Settings)Application["Settings"];
            if (Session["CheckRefresh"].ToString() == ViewState["CheckRefresh"].ToString())
            {
                Session["CheckRefresh"] = Server.UrlDecode(System.DateTime.Now.ToString());
                
            }
            else
            {
                LabelText1.Text = settings.Text2;
            }
            
        }
        protected void Page_PreRender(Object sender, EventArgs e)
        {
            ViewState["CheckRefresh"] = Session["CheckRefresh"];
        }
    }
}