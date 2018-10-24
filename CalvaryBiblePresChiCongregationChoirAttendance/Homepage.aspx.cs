using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label17.Text = "Watch here for update success";
    }

    protected void updateAttendance_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridViewAttend.Rows)
        {
            CheckBox AttendanceLister = (row.Cells[2].FindControl("Attend") as CheckBox);
            string studentNum = row.Cells[1].Text;
            if (AttendanceLister.Checked)
            {
                updateRow(studentNum, "1");
            }
            else
            {
                updateRow(studentNum, "0");
            }
        }

        Label17.Text = "Your Records Have Been Updated, Kindly Visit Reports to view the latest Attendance";
        Response.AddHeader("REFRESH", "1;URL=/Homepage.aspx");
    }

    void updateRow (string studentNum, string markStatus)
    {
        //Label17.Text = Label17.Text + "\r" + markStatus.Trim() + "\n" + studentNum.Trim() + "\n" + classPickedDropDownList.SelectedValue.Trim() + "\n" + Convert.ToDateTime(songCalendar.SelectedDate.ToShortDateString()).Date.ToString("dd/MMM/yyyy");
        SqlConnection connAtt = new SqlConnection("Data Source = attdanceserver.cgiynybjhwhm.ap-southeast-1.rds.amazonaws.com;" + "Initial Catalog = Calvary Attendance; Persist Security Info=True;User ID=dyraven;Password=Asdfgh1!");
        connAtt.Open();

        SqlCommand cmdAtt = new SqlCommand("UPDATE [Class Attendance] SET Attend = '" + markStatus.Trim() + "', Student_ID = '" + studentNum.Trim() + "', Class_ID = '" + classPickedDropDownList.SelectedValue.Trim() + "' , Date = '" + Convert.ToDateTime(songCalendar.SelectedDate.ToShortDateString()).Date.ToString("dd/MMM/yyyy") + "'  WHERE Student_ID = '" + studentNum.Trim() + "' AND Class_ID = '" + classPickedDropDownList.SelectedValue.Trim() + "' AND Date = '" + Convert.ToDateTime(songCalendar.SelectedDate.ToShortDateString()).Date.ToString("dd/MMM/yyyy") + "'");

        cmdAtt.Connection = connAtt;
        cmdAtt.ExecuteNonQuery();
        connAtt.Close();
    }
}