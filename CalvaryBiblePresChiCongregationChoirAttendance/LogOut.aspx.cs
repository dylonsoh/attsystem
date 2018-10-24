using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LogOut : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AddHeader("REFRESH", "2;URL=/Login.aspx");
    }
}