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
	public partial class RegisterForm : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				message.Text = "Hello " + username.Text + " ! ";
				message.Text = message.Text + " <br/> You have successfuly Registered with the following details.";
				ShowUserName.Text = username.Text;
				ShowEmail.Text = EmailID.Text;
				if (btnMale.Checked)
				{
					ShowGender.Text = btnMale.Text;
				}
				else ShowGender.Text = btnFemale.Text;
				var courses = "";
				if (cbCsharp.Checked)
				{
					courses = cbCsharp.Text + " ";
				}
				if (cbNet.Checked)
				{
					courses += cbNet.Text + " ";
				}
				if (cbCore.Checked)
				{
					courses += cbCore.Text;
				}
				ShowCourses.Text = courses;
				ShowUserNameLabel.Text = "User Name";
				ShowEmailIDLabel.Text = "Email ID";
				ShowGenderLabel.Text = "Gender";
				ShowCourseLabel.Text = "Courses";
				username.Text = "";
				EmailID.Text = "";
				btnMale.Checked = false;
				btnFemale.Checked = false;
				cbCsharp.Checked = false;
				cbNet.Checked = false;
				cbCore.Checked = false;
			}
			catch (Exception ex)
			{
				Response.Write(ex.Message);
			}
		}
	}
}