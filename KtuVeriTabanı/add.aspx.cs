using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace KtuVeriTabanı
{
    public partial class add : System.Web.UI.Page
    {
        int gun = 0;
        string myStringEkle = "Staj Başarı ile Eklendi.";
        string myStringError = "Hata oluştu kaydedilemedi.";
        string myString = "2. sınıf öğrencisi 25 günden fazla staj yapamaz";
        string myStringArge = "Arge şirketi haricinde 40 günden fazla staj yapılamaz";
        string myStringVariable = "Boş Giriş Yapılamaz";
        string connectionString = @"Data Source=localhost; Database=stajtakip; User ID=root; Password='12345'";

        protected void Page_Load(object sender, EventArgs e)
        {

            #region Sehir DropDownList
            if (!this.IsPostBack)
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM sehir"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        SehirList.DataSource = cmd.ExecuteReader();
                        SehirList.DataTextField = "sehirAdi";
                        SehirList.DataValueField = "sehirAdi";
                        SehirList.DataBind();
                        con.Close();

                    }
                }
                SehirList.Items.Insert(0, new ListItem("Şehir Seçiniz", "0"));
            }
            #endregion Sehir DropDownList

            #region Kurum Adı DropDownList
            if (!this.IsPostBack)
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM kurumlar"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        kurumList.DataSource = cmd.ExecuteReader();
                        kurumList.DataTextField = "kurumAdi";
                        kurumList.DataValueField = "kurumAdi";
                        kurumList.DataBind();
                        con.Close();
                    }
                }
                kurumList.Items.Insert(0, new ListItem("Kurum Seçiniz", "0"));
            }
            #endregion Kurum Adı DropDownList

            #region Staj Konusu DropDownList
            if (!this.IsPostBack)
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM konular"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        konuAdiList.DataSource = cmd.ExecuteReader();
                        konuAdiList.DataTextField = "stajKonusu";
                        konuAdiList.DataValueField = "stajKonusu";
                        konuAdiList.DataBind();
                        con.Close();
                    }
                }
                konuAdiList.Items.Insert(0, new ListItem("Konu Seçiniz", "0"));
            }
            #endregion Staj Konusu DropDownList
            
        }

        #region DropDownList Select Buttons
        public void btnSehirSec_OnClick(object sender,EventArgs e)
        {
            if (SehirList.Text != "0")
            {
                sehirAdi.Text = SehirList.Text;
            }
        }
        public void btnKurumSec_OnClick(object sender, EventArgs e)
        {
            if(kurumList.Text != "0")
            {
                kurum.Text = kurumList.Text;
            }
            
        }
        public void btnKonuSec_OnClick(object sender, EventArgs e)
        {
            if (konuAdiList.Text != "0")
            {
                konuAdi.Text = konuAdiList.Text;
            }
        }
        #endregion DropDownList Select Buttons

        #region Calender
        protected void lpdBa_Click(object sender, EventArgs e)
        {
            datePickerBa.Visible = true;
        }

        protected void DateChangeBa(object sender, EventArgs e)
        {
            ogrenciBaTarih.Text = datePickerBa.SelectedDate.ToString("yyyy-MM-dd");
            datePickerBa.Visible = false;
        }

        protected void lnkpickdate_Click(object sender, EventArgs e)
        {
            datePickerBi.Visible = true;
        }
       
        protected void DateChangeBi(object sender, EventArgs e)
        {
            ogrenciBiTarih.Text = datePickerBi.SelectedDate.ToString("yyyy-MM-dd"); 
            datePickerBi.Visible = false;
        }
        #endregion Calender

        protected void btnKaydet_OnClick(object sender, EventArgs e)
        {   
            bool flag = false;
            MySqlCommand stajEkle , konuEkle , ogrenciEkle , kurumEkle ,sehirEkle;
            MySqlConnection cn = new MySqlConnection(connectionString);

            #region Null İnputChecker
            if (ogrenciAd.Text!="" && ogrenciSoyad.Text!=""&& ogrenciNo.Text!=""&& ogrenciOgretim.Text!="" && ogrenciSinif.Text!=""&& ogrenciYGun.Text!="" && ogrenciBaTarih.Text !="" && ogrenciBiTarih.Text!="" && konuAdi.Text!="" && kurum.Text != "" && sehirAdi.Text!="")
            { flag = true; }
            else { flag = false; }
            #endregion Null İnputChecker

            if (!flag)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
                #region Öğrenci Insert
                try
                {
                    ogrenciEkle = new MySqlCommand("INSERT INTO ogrenciler (ogrNo,ogrAd,ogrSoyad,ogrOgretim) VALUES (@ogrNo,@ogrAd,@ogrSoyad,@ogrOgretim)", cn);
                    ogrenciEkle.Parameters.AddWithValue("@ogrNo", ogrenciNo.Text);
                    ogrenciEkle.Parameters.AddWithValue("@ogrAd", ogrenciAd.Text);
                    ogrenciEkle.Parameters.AddWithValue("@ogrSoyad", ogrenciSoyad.Text);
                    ogrenciEkle.Parameters.AddWithValue("@ogrOgretim", ogrenciOgretim.Text);
                    cn.Open();
                    ogrenciEkle.ExecuteNonQuery();
                }
                catch{ }
                finally{ cn.Close(); }
                #endregion Öğrenci Insert

                #region Konu Insert
                try
                {
                    konuEkle = new MySqlCommand("INSERT INTO konular (stajKonusu) VALUES (@konuAdi)", cn);
                    konuEkle.Parameters.AddWithValue("@konuAdi", konuAdi.Text);
                    cn.Open();
                    konuEkle.ExecuteNonQuery();
                }
                catch{ }
                finally{ cn.Close(); }
                #endregion Konu Insert

                #region Kurum Insert
                try
                {
                    kurumEkle = new MySqlCommand("INSERT INTO kurumlar (kurumAdi) VALUES (@kurum)", cn);
                    kurumEkle.Parameters.AddWithValue("@kurum", kurum.Text);
                    cn.Open();
                    kurumEkle.ExecuteNonQuery();
                }
                catch{ }
                finally{ cn.Close(); }
                #endregion Kurum Insert

                #region Sehir Insert
                try
                {
                    sehirEkle = new MySqlCommand("INSERT INTO sehir (sehirAdi) VALUES (@sehirAdi)", cn);
                    sehirEkle.Parameters.AddWithValue("@sehirAdi", sehirAdi.Text);
                    cn.Open();
                    sehirEkle.ExecuteNonQuery();
                }
                catch{ }
                finally{ cn.Close(); }
                #endregion Sehir Insert

                #region Staj Insert
                try
                {
                    stajEkle = new MySqlCommand("INSERT INTO staj (kurumAdi, sehir,baslama, bitis,yapilanGun,stajKonusu,ogrSinifBilgisi,kabulEdilenGun,degerlendirildi,ogrNo) VALUES (@kurumAdi,@sehirAdi,@baslama,@bitis,@yapilanGun,@stajKonusu,@ogrSinifBilgisi,@kabulEdilenGun,@degerlendirildi,@ogrNo)", cn);

                    stajEkle.Parameters.AddWithValue("@kurumAdi", kurum.Text);
                    stajEkle.Parameters.AddWithValue("@sehirAdi", sehirAdi.Text);
                    stajEkle.Parameters.AddWithValue("@baslama", ogrenciBaTarih.Text);
                    stajEkle.Parameters.AddWithValue("@bitis", ogrenciBiTarih.Text);

                    Int32.TryParse(ogrenciYGun.Text, out gun);
                    if (  (ogrenciSinif.Text =="1" || ogrenciSinif.Text =="2" )&& gun > 25 )
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myString + "');", true);
                    }
                    else if(gun > 40)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringArge + "');", true);
                        
                    }
                    else
                    {
                        stajEkle.Parameters.AddWithValue("@yapilanGun", ogrenciYGun.Text);
                    }

                    stajEkle.Parameters.AddWithValue("@stajKonusu", konuAdi.Text);
                    stajEkle.Parameters.AddWithValue("@ogrSinifBilgisi", ogrenciSinif.Text);

                    if(ogrenciKGun.Text != "")
                    {
                        stajEkle.Parameters.AddWithValue("@kabulEdilenGun", ogrenciKGun.Text);
                        stajEkle.Parameters.AddWithValue("@degerlendirildi", true);
                    }
                    else
                    {
                        stajEkle.Parameters.AddWithValue("@kabulEdilenGun", null);
                        stajEkle.Parameters.AddWithValue("@degerlendirildi", false);
                    }
                    
                    stajEkle.Parameters.AddWithValue("@ogrNo", ogrenciNo.Text);
                    cn.Open();
                    stajEkle.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringEkle + "');", true);
                }
                catch { ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringError + "');", true);}
                finally { cn.Close(); }
                #endregion Staj Insert
            }
        }

        public void btnHome_OnClick2(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}