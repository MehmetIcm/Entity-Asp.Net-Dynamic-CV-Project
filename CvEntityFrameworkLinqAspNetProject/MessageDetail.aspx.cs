using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class MessageDetail : System.Web.UI.Page
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
            var messageRow = dataBase.TBLILETISIM.Find(comingId);
            TxtSender.Text = messageRow.ADSOYAD;
            TxtMail.Text = messageRow.MAIL;
            TxtSubject.Text = messageRow.KONU;
            TxtMessage.Text = messageRow.MESAJ;
        }
    }
}