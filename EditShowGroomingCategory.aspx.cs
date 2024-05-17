using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class EditShowGroomingCategory : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
        if (!IsPostBack)
        {
            ddlPettype.SelectedItem.Text = Session["pettype"].ToString();
            txtGroomingTitle.Text = Session["grooming"].ToString();

            txtAmount.Text = Session["amount"].ToString();
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE GroomingCategory SET pettype = '" + ddlPettype.SelectedItem.Text + "', grooming = '" + txtGroomingTitle.Text + "', amount = " + txtAmount.Text + " WHERE id = " + Session["id"] + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ShowGroomingCategory.aspx");
       
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("DELETE FROM GroomingCategory WHERE id = " + Session["id"] + "", con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("ShowGroomingCategory.aspx");
       
        con.Close();
    }
}