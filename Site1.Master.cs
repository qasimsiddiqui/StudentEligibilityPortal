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
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    universitiesPageLink.Visible = true;
                    loginPageLink.Visible = true;
                    registerPageLink.Visible = true;

                    helloLink.Visible = false;
                    logoutLink.Visible = false;
                    adminPageLinks.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    universitiesPageLink.Visible = true;
                    loginPageLink.Visible = false;
                    registerPageLink.Visible = false;

                    logoutLink.Visible = true;
                    adminPageLinks.Visible = false;
                    helloLink.Visible = true;
                    helloLink.Text = "Hello, " + Session["username"].ToString();
                }
                else if(Session["role"].Equals("admin"))
                {
                    universitiesPageLink.Visible = false;
                    loginPageLink.Visible = false;
                    registerPageLink.Visible = false;

                    logoutLink.Visible = true;
                    helloLink.Visible = true;
                    helloLink.Text = "Hello, " + Session["username"].ToString();
                    adminPageLinks.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
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

        protected void logoutLink_Click(object sender, EventArgs e)
        {
            Session.Clear();

            loginPageLink.Visible = true;
            registerPageLink.Visible = true;
            universitiesPageLink.Visible = true;

            helloLink.Visible = false;
            logoutLink.Visible = false;
            adminPageLinks.Visible = false;

            Response.Redirect("homePage.aspx");
        }

        protected void universitiesManagementLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminUniversityManagement.aspx");
        }
    }
}