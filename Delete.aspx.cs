using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Delete : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
    
    }
    protected void gvDelete_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("DELETE FROM Registration1 WHERE regno = " + gvDelete.Rows[gvDelete.SelectedIndex].Cells[0].Text + "", con);
        cmd1.ExecuteNonQuery();
        gvDelete.DataBind();
        con.Close();
    }
}