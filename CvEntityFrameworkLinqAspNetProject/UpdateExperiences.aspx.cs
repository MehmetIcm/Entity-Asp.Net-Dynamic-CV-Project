using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class UpdateExperiences : System.Web.UI.Page
    {
        DbCvEntityEntities dataBase = new DbCvEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Session Control
            if (Session["user"] == null)  //If there is no login, return to login page
            {
                Response.Redirect("Login.aspx");
            }

            // Getting Value From Other Page
            int comingId = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)   // Prevent page reload. If we don't use, values will not updated cause it gets old values
            {
                var experienceRow = dataBase.TBLHAKKIMDA.Find(comingId);
                TxtExperience.Text = experienceRow.ISDENEYIMLERI;
            }
        }

        protected void BtnUpdateExperiences_Click(object sender, EventArgs e)
        {
            // Getting Value From Other Page
            int comingId = int.Parse(Request.QueryString["ID"]);
            var experienceRow = dataBase.TBLHAKKIMDA.Find(comingId);
            experienceRow.ISDENEYIMLERI = TxtExperience.Text;
            dataBase.SaveChanges();
            Response.Redirect("Experiences.aspx");
        }
    }
}