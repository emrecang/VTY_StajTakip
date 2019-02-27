using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace KtuVeriTabanı
{
    public partial class bitenler : System.Web.UI.Page
    {
        string connectionString = @"Data Source=localhost; Database=stajtakip; User ID=root; Password='12345'";
        protected void Page_Load(object sender, EventArgs e)
        {
             MySqlConnection cn = new MySqlConnection(connectionString);
             MySqlDataAdapter da = new MySqlDataAdapter("select ogrNo,ogrAd,ogrSoyad,ogrOgretim,ogrSinifBilgisi ,sum(yapilanGun) as ToplamGun ,sum(kabulEdilenGun) as ToplamKabulEdilenGun from staj natural join ogrenciler group by ogrNo having sum(yapilanGun) >= 60 and sum(kabulEdilenGun) >= 57 ", cn);
             DataTable dt = new DataTable();
             da.Fill(dt); da.Dispose(); cn.Dispose();
             rptBitenler.DataSource = dt;
             rptBitenler.DataBind();
             dt.Dispose();
        }
    }
}