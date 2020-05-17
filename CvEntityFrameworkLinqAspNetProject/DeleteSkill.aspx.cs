using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class DeleteSkill : System.Web.UI.Page
    {
        DbCvEntityEntities dataBase = new DbCvEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Session Control
            if (Session["user"] == null)  //If there is no login, return to login page
            {
                Response.Redirect("Login.aspx");
            }

            // Entity DELETE
            int comingValue = Convert.ToInt32(Request.QueryString["ID"]);
            var skill = dataBase.TBLYETENEKLER.Find(comingValue);
            dataBase.TBLYETENEKLER.Remove(skill);
            dataBase.SaveChanges();
            Response.Redirect("Skills.aspx");
        }
    }
}