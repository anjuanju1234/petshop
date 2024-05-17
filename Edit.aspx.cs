using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Edit : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
    
    }
    protected void gvEdit_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        string str;
        str = gvEdit.Rows[gvEdit.SelectedIndex].Cells[0].Text;
        Session["regno"] = str;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM Registration1 WHERE regno = " + str + "", con);
        cmd1.ExecuteNonQuery();
        da.SelectCommand = cmd1;
        da.Fill(ds);
        DataTable dt = ds.Tables[0];
        Session["regid"] = dt.Rows[0][1];
        Session["ownername"] = dt.Rows[0][2];
        Session["owneraddress"] = dt.Rows[0][3];
        Session["ownerphoneno"] = dt.Rows[0][4];
        Session["location"] = dt.Rows[0][5];
        Session["petname"] = dt.Rows[0][6];
        Session["petspecious"] = dt.Rows[0][7];
        Session["gender"] = dt.Rows[0][8];
        Session["agemonth"] = dt.Rows[0][9];
        Session["ageyear"] = dt.Rows[0][10];
        Session["weightkilogram"] = dt.Rows[0][11];
        Session["weightgram"] = dt.Rows[0][12];

        Response.Redirect("ShowDetail.aspx");
    }
}