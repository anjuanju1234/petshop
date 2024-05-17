using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class GroomingCategory : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        if (ddlPettype.SelectedItem.Text != "Select Any")
        {

            SqlCommand cmd = new SqlCommand("INSERT INTO GroomingCategory(pettype,grooming,amount) VALUES ( '" + ddlPettype.SelectedItem.Text + "','" + txtGroomingTitle.Text + "'," + txtAmount.Text + " )", con);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();

            con.Close();
        }
    }
}