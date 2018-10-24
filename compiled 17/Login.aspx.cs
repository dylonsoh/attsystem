using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string userIDStore = "";
    public string userPWStore = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        wrongPass.Visible = false;
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
            userIDStore = idBox.Text;

            userPWStore = passwordBox.Text;

        if (userIDStore == "admin" && userPWStore == "rootbeer")
        {
            Response.Redirect("~/Homepage.aspx");
        }
        else if (userIDStore != "admin" || userPWStore != "rootbeer")
        {
            wrongPass.Visible = true;
            Response.AddHeader("REFRESH", "2;URL=/Login.aspx");
        }
    }
}