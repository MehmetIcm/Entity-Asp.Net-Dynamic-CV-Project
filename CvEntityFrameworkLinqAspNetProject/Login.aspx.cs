using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class Login : System.Web.UI.Page
    {
        DbCvEntityEntities dataBase = new DbCvEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var query = from x in dataBase.TBLADMIN where x.USERNAME == TxtUserName.Text && x.PASWORD == TxtPassword.Text select x;
            if (query.Any())
            {
                Session["user"] = TxtUserName.Text;
                Response.Redirect("Dashboard.aspx");
                Session.RemoveAll();
            }
            else
            {
                Response.Write("<script>alert(' Username or password is wrong! ')</script>");    //Login Error Alert
            }
        }
    }
}