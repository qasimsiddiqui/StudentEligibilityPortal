using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentEligibilityPortal
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void universitiesPageLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("universitiesListPage.aspx");
        }

        protected void loginPageLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void registerPageLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("signupForm.aspx");
        }
    }
}