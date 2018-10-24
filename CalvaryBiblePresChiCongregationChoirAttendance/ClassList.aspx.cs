using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ClassList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        datesSelectedTextBox.Text = DateTime.Today.ToString("dd MMM yyyy");
    }

    protected void addClassButton2_Click(object sender, EventArgs e)
    {
        SqlConnection conn2 = new SqlConnection("Data Source = calvaryattendance2018fiscalyear.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        conn2.Open();

        SqlCommand cmd = new SqlCommand("INSERT into Class (Class_ID, Date, sectionalTitle1,combinedTitle1,sectionalTitle2,combinedTitle2,sectionalTitle3,combinedTitle3,sectionalTitle4, combinedTitle4) values ('"+classListBox.SelectedValue.Trim()+"','"+datesSelectedTextBox.Text.Trim()+"',N'"+sectionalTitleText1.Text.Trim()+"',N'"+combinedTitleText1.Text.Trim()+"',N'"+sectionalTitleText2.Text.Trim()+"',N'"+combinedTitleText2.Text.Trim()+"',N'"+sectionalTitleText3.Text.Trim()+"',N'"+combinedTitleText3.Text.Trim()+"',N'"+sectionalTitleText4.Text.Trim()+"',N'"+combinedTitleText4.Text.Trim()+"')");
        cmd.Connection = conn2;
        cmd.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("INSERT into [Class Attendance] (Student_ID,Class_ID,Date) SELECT PersonalParticulars.Student_ID , PersonalParticulars.Class_ID,Class.Date FROM PersonalParticulars,Class WHERE PersonalParticulars.Class_ID = '" + classListBox.SelectedValue.Trim() + "' AND Class.Date = '" + datesSelectedTextBox.Text.Trim() + "'");
        cmd2.Connection = conn2;
        cmd2.ExecuteNonQuery();

        conn2.Close();
        Response.Redirect("ClassList.aspx");
    }

    protected void updateClassButton4_Click(object sender, EventArgs e)
    {
        SqlConnection conn4 = new SqlConnection("Data Source = calvaryattendance2018fiscalyear.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        conn4.Open();
        SqlCommand cmd = new SqlCommand("UPDATE class Set Class_ID = '"+classListBox.SelectedValue.Trim()+ "', Date = '" + datesSelectedTextBox.Text.Trim() + "', sectionalTitle1 = N'" + sectionalTitleText1.Text.Trim() + "' ,combinedTitle1 = N'" + combinedTitleText1.Text.Trim() + "',sectionalTitle2 = N'" + sectionalTitleText2.Text.Trim() + "' ,combinedTitle2 = N'" + combinedTitleText2.Text.Trim() + "' ,sectionalTitle3 = N'" + sectionalTitleText3.Text.Trim() + "' ,combinedTitle3 = N'" + combinedTitleText3.Text.Trim() + "' ,sectionalTitle4 = N'" + sectionalTitleText4.Text.Trim() + "' , combinedTitle4 = N'" + combinedTitleText4.Text.Trim() + "' WHERE Class_ID = '" + classListBox.SelectedValue.Trim() + "' AND Date = '" + datesSelectedTextBox.Text.Trim() + "'");
        cmd.Connection = conn4;
        cmd.ExecuteNonQuery();
        conn4.Close();
        Response.Redirect("ClassList.aspx");
    }

    protected void deleteClassButton3_Click(object sender, EventArgs e)
    {
        SqlConnection conn3 = new SqlConnection("Data Source = calvaryattendance2018fiscalyear.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        conn3.Open();
        SqlCommand cmd = new SqlCommand("DELETE FROM class WHERE Class_ID ='"+classListBox.SelectedValue.Trim()+"' AND Date ='" + datesSelectedTextBox.Text.Trim() + "'");
        SqlCommand cmd2 = new SqlCommand("DELETE FROM [Class Attendance] WHERE Class_ID ='" + classListBox.SelectedValue.Trim() + "' AND Date ='" + datesSelectedTextBox.Text.Trim() + "'");
        cmd2.Connection = conn3;
        cmd.Connection = conn3;
        cmd.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        conn3.Close();
        Response.Redirect("ClassList.aspx");
    }

    protected void PeopleAdder_Click(object sender, EventArgs e)
    {
        SqlConnection connAdd = new SqlConnection("Data Source = calvaryattendance2018fiscalyear.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        connAdd.Open();
        SqlCommand cmd2 = new SqlCommand("INSERT into [Class Attendance] (Student_ID,Class_ID,Date,Attend) values ('" + peopleList.SelectedValue.Trim() + "','" + classListBox.SelectedValue.Trim() + "','" + datesSelectedTextBox.Text.Trim() + "','" + null + "')");
        cmd2.Connection = connAdd;
        cmd2.ExecuteNonQuery();
        connAdd.Close();
    }

    protected void datesSelectedListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        datesSelectedTextBox.Text = Convert.ToDateTime(datesSelectedListBox.SelectedItem.Value).Date.ToString("dd/MMM/yyyy");
    }

    protected void PeopleDeleter_Click(object sender, EventArgs e)
    {
        SqlConnection connDel = new SqlConnection("Data Source = calvaryattendance2018fiscalyear.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        connDel.Open();
        SqlCommand cmdDel = new SqlCommand("DELETE FROM [Class Attendance] WHERE Student_ID = '"+peopleList.SelectedValue.Trim()+"' AND Class_ID ='"+classListBox.SelectedValue.Trim()+"' AND Date = '"+datesSelectedTextBox.Text.Trim()+"'");
        cmdDel.Connection = connDel;
        cmdDel.ExecuteNonQuery();
        connDel.Close();
    }
}