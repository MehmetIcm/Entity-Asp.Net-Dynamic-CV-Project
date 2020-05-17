using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityFrameworkLinqAspNetProject
{
    public partial class Default : System.Web.UI.Page
    {
        DbCvEntityEntities database = new DbCvEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //About Me - Name
            Repeater0.DataSource = database.TBLHAKKIMDA.ToList();
            Repeater0.DataBind();            
            Repeater1.DataSource = database.TBLHAKKIMDA.ToList();
            Repeater1.DataBind();



            //Education
            Repeater2.DataSource = database.TBLHAKKIMDA.ToList();
            Repeater2.DataBind();

            //Experiences
            Repeater3.DataSource = database.TBLHAKKIMDA.ToList();
            Repeater3.DataBind();

            //Skills
            Repeater4.DataSource = database.TBLYETENEKLER.ToList();
            Repeater4.DataBind();
        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            TBLILETISIM tblIletisim = new TBLILETISIM();
            tblIletisim.ADSOYAD = TxtName.Text;
            tblIletisim.MAIL = TxtMail.Text;
            tblIletisim.KONU = TxtSubject.Text;
            tblIletisim.MESAJ = TxtMessage.Text;
            database.TBLILETISIM.Add(tblIletisim);
            database.SaveChanges();
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtName.Text = "";
            TxtMail.Text = "";
            TxtSubject.Text = "";
            TxtMessage.Text = "";
        }
    }
}