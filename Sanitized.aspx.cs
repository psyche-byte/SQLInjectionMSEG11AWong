using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace VulnerableSQLInjection
{
    public partial class _Sanitized : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitProtegido_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["SQLInjection"].ConnectionString;
            
            using (SqlCommand cmd = new SqlCommand("ObtenerUsuario"))
            {
                using (SqlConnection con = new SqlConnection(conString))
                {
                    con.Open();

                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@Usuario", txtUsuarioProtegido.Text);

                    gvResultsProtegido.DataSource = cmd.ExecuteReader();
                    gvResultsProtegido.DataBind();

                    con.Close();
                }
            }
        }
    }
}