using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglan = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = "+Server.MapPath("App_Data//veritabanı.mdb"));
        baglan.Open();

        OleDbCommand ekle = new OleDbCommand("insert into uye(ad,tel,mail,parola,mesaj) values (@a,@b,@c,@d,@e)", baglan);
        ekle.Parameters.Add("a", txtisim.Text);
        ekle.Parameters.Add("b", Textelefon.Text);
        ekle.Parameters.Add("c", Textmail.Text);
        ekle.Parameters.Add("d", TextParola.Text);
        ekle.Parameters.Add("e", TextBox1.Text);
        ekle.ExecuteNonQuery();
        Lblbilgi.Text = "Kayıt Başarılı";
        baglan.Close();

    }
}