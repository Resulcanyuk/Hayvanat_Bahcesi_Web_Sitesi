using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        OleDbConnection bilgi = new OleDbConnection
       ("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        bilgi.Open();
        OleDbCommand altmenuoku = new OleDbCommand("select * from hayvanbilgi", bilgi);
        OleDbDataReader draltmenu = altmenuoku.ExecuteReader();
        Rephayvanbilgi.DataSource = draltmenu;
        Rephayvanbilgi.DataBind();
        bilgi.Close();
    }
}