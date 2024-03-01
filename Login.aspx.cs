using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJ
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Validate username and password
            // If valid, redirect to the main page
            // Otherwise, display an error message in lblMessage

            lblMessage.Text = "Invalid username or password";
        }
    }
}