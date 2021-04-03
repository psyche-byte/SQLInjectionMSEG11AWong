using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace VulnerableSQLInjection
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitVulnerable_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["SQLInjection"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Usuario WHERE Usuario = '" + txtUsuarioVulnerable.Text + "'"))
            {
                using (SqlConnection con = new SqlConnection(conString))
                {
                    con.Open();

                    cmd.Connection = con;

                    var da = new SqlDataAdapter(cmd);

                    DataSet ds = new DataSet();

                    da.Fill(ds);

                    gvResultsVulnerable.DataSource = ds;
                    gvResultsVulnerable.DataBind();
                    
                    con.Close();
                }
            }
        }
    }
}