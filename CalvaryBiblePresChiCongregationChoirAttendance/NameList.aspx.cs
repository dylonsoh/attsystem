using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NameList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addPerson_Click(object sender, EventArgs e)
    {
        //TextBox11.Text = TextBox11.Text + nameTextBox.Text + "','" + classDropDownList.SelectedValue.Trim() + "','" + studentIDTextBox.Text.Trim();
        SqlConnection conn = new SqlConnection("Data Source = attdanceserver.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        conn.Open();
        SqlCommand cmd = new SqlCommand("INSERT into PersonalParticulars (Name,Class_ID,Student_ID) values (N'"+nameTextBox.Text+"','"+classDropDownList.SelectedValue.Trim()+"','"+studentIDTextBox.Text.Trim()+"')");
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("NameList.aspx");
    }

    protected void updatePerson_Click(object sender, EventArgs e)
    {
        SqlConnection conn2 = new SqlConnection("Data Source = attdanceserver.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        conn2.Open();
        SqlCommand cmd = new SqlCommand("UPDATE PersonalParticulars SET Name = N'" + nameTextBox.Text.Trim() + "', Class_ID = '" + classDropDownList.SelectedValue.Trim() + "',Student_ID =  '" + studentIDTextBox.Text.Trim() + "' WHERE Name = N'"+nameListBox.SelectedValue.Trim()+"' AND Class_ID = '"+classDropDownList.SelectedValue.Trim()+"' AND Student_ID = '"+studentIDListBox.SelectedValue.Trim()+"'");
        cmd.Connection = conn2;
        cmd.ExecuteNonQuery();
        conn2.Close();
        Response.Redirect("NameList.aspx");
    }

    protected void deletePerson_Click(object sender, EventArgs e)
    {
        SqlConnection conn3 = new SqlConnection("Data Source = attdanceserver.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        conn3.Open();
        SqlCommand cmd = new SqlCommand("DELETE FROM PersonalParticulars WHERE Name = N'" + nameListBox.SelectedValue.Trim() + "' AND Class_ID = '" + classDropDownList.SelectedValue.Trim() + "' AND Student_ID = '" + studentIDListBox.SelectedValue.Trim() + "'");
        cmd.Connection = conn3;
        cmd.ExecuteNonQuery();
        conn3.Close();
        Response.Redirect("NameList.aspx");
    }
}