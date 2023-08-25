using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class panelgiris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        OleDbConnection baglan = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        baglan.Open();

        OleDbCommand kontrol = new OleDbCommand("Select * from uye where mail=@a and parola=@b and yetki=true ", baglan);
        kontrol.Parameters.Add("a", TextBox1.Text);
        kontrol.Parameters.Add("b", TextBox2.Text);
        OleDbDataReader dr = kontrol.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("kullanici", dr["ad"].ToString());
           Label1.Text = "Merhaba "+Session["kullanici"];
            Response.Redirect("panel.aspx");
        }
        else
        {
            Label1.Text = "Panele Yetkiniz Yok";
        }
        

    }
}