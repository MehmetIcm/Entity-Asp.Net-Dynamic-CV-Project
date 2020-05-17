using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class Dashboard : System.Web.UI.Page
    {
        DbCvEntityEntities dataBase = new DbCvEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Session Control
            if (Session["user"] == null)  //If there is no login, return to login page
            {
                Response.Redirect("Login.aspx");
            }


            lblTotalSkill.Text = dataBase.TBLYETENEKLER.Count().ToString();
            lblTotalMessage.Text = dataBase.TBLILETISIM.Count().ToString();
            lblAverageRatingScore.Text = (Math.Round(Convert.ToDouble(dataBase.TBLYETENEKLER.Average(x => x.DERECE)), 3)).ToString();
            lblHighSkillDegree.Text = dataBase.TBLYETENEKLER.Max(x => x.DERECE).ToString();
            lblHighSkillDegree1.Text = dataBase.TBLYETENEKLER.Max(x => x.DERECE).ToString();
        }
    }
}