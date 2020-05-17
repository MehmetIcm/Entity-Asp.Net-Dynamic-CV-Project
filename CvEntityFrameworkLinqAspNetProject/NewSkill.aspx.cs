using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class NewSkill : System.Web.UI.Page
    {
        DbCvEntityEntities dataBase = new DbCvEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Session Control
            if (Session["user"] == null)  //If there is no login, return to login page
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Entity INSERT INTO
            TBLYETENEKLER tableYetenekler = new TBLYETENEKLER();
            tableYetenekler.YETENEK = TxtSkill.Text;
            dataBase.TBLYETENEKLER.Add(tableYetenekler);
            dataBase.SaveChanges();
            Response.Redirect("Skills.aspx");
        }
    }
}