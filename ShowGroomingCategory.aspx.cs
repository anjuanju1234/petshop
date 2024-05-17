using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShowGroomingCategory : System.Web.UI.Page
{
    SqlConnection con;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        string str;
        
        str = GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text;
        Session["regno"] = str;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM GroomingCategory WHERE id = " + str + "", con);
        cmd1.ExecuteNonQuery();
        da.SelectCommand = cmd1;
        da.Fill(ds);
        DataTable dt = ds.Tables[0];
        Session["id"] = dt.Rows[0][0];
        Session["pettype"] = dt.Rows[0][1];
        Session["grooming"] = dt.Rows[0][2];
        
        Session["amount"] = dt.Rows[0][3];
      
        Response.Redirect("EditShowGroomingCategory.aspx");
    }
}