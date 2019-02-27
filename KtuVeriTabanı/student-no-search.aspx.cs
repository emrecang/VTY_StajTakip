using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace KtuVeriTabanı
{
    public partial class student_no_search : System.Web.UI.Page
    {
        string connectionString = @"Data Source=localhost; Database=stajtakip; User ID=root; Password='12345'";
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnSrc_OnClick(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text != "")
                {
                    string user = TextBox1.Text;
                    MySqlConnection cn = new MySqlConnection(connectionString);
                    MySqlDataAdapter da = new MySqlDataAdapter("select * from ogrenciler natural join staj where ogrNo = " + user, cn);
                    DataTable dt = new DataTable();
                    da.Fill(dt); da.Dispose(); cn.Dispose();
                    rptOgrenciler.DataSource = dt;
                    rptOgrenciler.DataBind();
                    dt.Dispose();
                }

                else
                {
                    MySqlConnection cn = new MySqlConnection(connectionString);
                    MySqlDataAdapter da = new MySqlDataAdapter("select * from ogrenciler natural join staj ", cn);
                    DataTable dt = new DataTable();
                    da.Fill(dt); da.Dispose(); cn.Dispose();
                    rptOgrenciler.DataSource = dt;
                    rptOgrenciler.DataBind();
                    dt.Dispose();
                    
                }
            }
            
            catch { }
            
        }

        protected void btnHome_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
        protected void btnEGG_OnClick(object sender , EventArgs e)
        {
            Response.Redirect("easterEgg.html");
        }
    }
}