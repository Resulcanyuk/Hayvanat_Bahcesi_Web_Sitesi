using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class galeri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        OleDbConnection galeri = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data//veritabanı.mdb"));
        galeri.Open();
        OleDbCommand menuoku = new OleDbCommand("select * from galeri", galeri);
        OleDbDataReader drmenu = menuoku.ExecuteReader();
        Repeater1.DataSource = drmenu;
        Repeater1.DataBind();
        galeri.Close();
    }
}