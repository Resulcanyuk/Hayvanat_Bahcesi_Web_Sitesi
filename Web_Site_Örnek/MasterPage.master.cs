using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            LinkButton1.Text = (Session["kullanici"].ToString().ToUpper());
            Session.Timeout = 5;
            
        }

        else
        {
            
        }

        




        OleDbConnection menu= new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        menu.Open();
        OleDbCommand menuoku = new OleDbCommand("select * from menu", menu);
        OleDbDataReader drmenu = menuoku.ExecuteReader();
        Repmenu.DataSource = drmenu;
        Repmenu.DataBind();
        menu.Close();
        


        OleDbConnection altmenu = new OleDbConnection
       ("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        altmenu.Open();
        OleDbCommand altmenuoku = new OleDbCommand("select * from altmenu", altmenu);
        OleDbDataReader draltmenu = altmenuoku.ExecuteReader();
        Repmenu2.DataSource = draltmenu;
        Repmenu2.DataBind();
        altmenu.Close();

        OleDbConnection yanmenu = new OleDbConnection
       ("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        yanmenu.Open();
        OleDbCommand yanmenuoku = new OleDbCommand("select * from yanmenu", yanmenu);
        OleDbDataReader dryanmenu = yanmenuoku.ExecuteReader();
        Repyanmenu.DataSource = dryanmenu;
        Repyanmenu.DataBind();
      

        
        
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       OleDbConnection baglan = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        baglan.Open();

        OleDbCommand kontrol= new OleDbCommand("Select * from uye where mail=@a and parola=@b ",baglan);
        kontrol.Parameters.Add("a", textposta.Text);
        kontrol.Parameters.Add("b", textsifre.Text);

        OleDbDataReader dr = kontrol.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("kullanici", textposta.Text);
            Lblkontrol.Text = "Merhaba " + dr["ad"].ToString();
            Response.Redirect("anasayfa.aspx");
        }
        else
        {
            Lblkontrol.Text = "Bilgiler Yanlış";
        }


        



        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("anasayfa.aspx");
    }
}
