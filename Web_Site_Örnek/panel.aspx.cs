using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            
                OleDbConnection baglann= new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
                baglann.Open();

                OleDbCommand kontrol = new OleDbCommand("Select * from uye where mail=@a and parola=@b and yetki=true ", baglann);
            
                
            Response.Redirect("panel.aspx");
            Session.Timeout = 5;

        }
     

        else
        {
            Response.Redirect("anasayfa.aspx");
        }
    }
}