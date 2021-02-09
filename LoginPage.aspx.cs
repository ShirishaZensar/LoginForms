using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDown
{
	public partial class LoginPage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnLogin_Click(object sender, EventArgs e)
		{
			try
			{
				SqlCommand cmd = null;
				SqlDataAdapter da = null;
				DataTable dt = null;
				using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conns"].ConnectionString))
				{
					using (cmd = new SqlCommand("SELECT * FROM LoginForm WHERE usrname=@usrname and pwd=@pwd", con))
					{
						cmd.Parameters.AddWithValue("@usrname", txtUsername.Text);
						cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
						using (da = new SqlDataAdapter(cmd))
						{
							dt = new DataTable();
							da.Fill(dt);
							con.Open();
							int i = cmd.ExecuteNonQuery();
							con.Close();
							if (dt.Rows.Count > 0)
							{
								Session["lid"] = txtUsername.Text;
								Response.Redirect("LogOutPage.aspx");
								Session.RemoveAll();
							}
							else
							{
								lblData.Text = "You're username and password is incorrect!!!";
								lblData.ForeColor = System.Drawing.Color.DarkGreen;
							}
						}
					}
				}
			}
			catch (Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void btnRegister_Click(object sender, EventArgs e)
		{
			lblData.Text = "Invalid";
			if (lblData.Text == "Invalid")
			{
				Response.Redirect("RegisterForm.aspx");
			}
		}
	}
}