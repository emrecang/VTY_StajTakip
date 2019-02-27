using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace KtuVeriTabanı
{
    
    public partial class index : System.Web.UI.Page
    {
        string myStringEklendi = "Başarıyla Eklendi";
        string myStringVariable = "Boş Giriş Yapılamaz";
        string connectionString = @"Data Source=localhost; Database=stajtakip; User ID=root; Password='12345'";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnKonuEkle_OnClick(object sender, EventArgs e)
        {
            MySqlCommand konuStr;
            MySqlConnection cn = new MySqlConnection(connectionString);
            try
            {
                if (konuText.Text != "")
                {
                    konuStr = new MySqlCommand("INSERT INTO konular (stajKonusu) VALUES (@konuAdi)", cn);
                    konuStr.Parameters.AddWithValue("@konuAdi", konuText.Text);
                    cn.Open();
                    konuStr.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringEklendi + "');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
            }

            catch { }
        }
        protected void btnSirketEkle_OnClick(object sender, EventArgs e)
        {
            MySqlCommand sirketStr;
            MySqlConnection cn = new MySqlConnection(connectionString);
            try
            {
                if (sirketText.Text != "")
                {
                    sirketStr = new MySqlCommand("INSERT INTO kurumlar (kurumAdi) VALUES (@kurum)", cn);
                    sirketStr.Parameters.AddWithValue("@kurum", sirketText.Text);
                    cn.Open();
                    sirketStr.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringEklendi + "');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
            }
            catch { }
        }
        protected void btnSehirEkle_OnClick(object sender, EventArgs e)
        {
            
            MySqlCommand sehirStr;
            MySqlConnection cn = new MySqlConnection(connectionString);
            try
            {
                if(sehirText.Text != "")
                {
                    sehirStr = new MySqlCommand("INSERT INTO sehir (sehirAdi) VALUES (@sehir)", cn);
                    sehirStr.Parameters.AddWithValue("@sehir", sehirText.Text);
                    cn.Open();
                    sehirStr.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringEklendi + "');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
            }
            catch { }
        }
        protected void btnKomisyonEkle_OnClick(object sender, EventArgs e)
        {
            MySqlCommand komisyonStr;
            MySqlConnection cn = new MySqlConnection(connectionString);
            try
            {
                if (komisyonAdText.Text != "" && komisyonSoyadText.Text != "")
                {
                    komisyonStr = new MySqlCommand("INSERT INTO stajkomisyonu (uyeAd,uyeSoyad) VALUES (@ad,@soyad)", cn);
                    komisyonStr.Parameters.AddWithValue("@ad", komisyonAdText.Text);
                    komisyonStr.Parameters.AddWithValue("@soyad", komisyonSoyadText.Text);
                    cn.Open();
                    komisyonStr.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringEklendi + "');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
        }
            catch { }
        }
        protected void btnKomisyonListele_OnClick(object sender, EventArgs e)
        {
            MySqlCommand komisyonStr;
            MySqlConnection cn = new MySqlConnection(connectionString);
            try
            {
               
                    komisyonStr = new MySqlCommand("Selet * from stajkomisyonu", cn);
                    cn.Open();
                    komisyonStr.ExecuteNonQuery();
            }
            catch { }
        }
    }
}