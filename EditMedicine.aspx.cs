using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EditMedicine : System.Web.UI.Page
{
    SqlConnection con;
    string taxable;
    string id;
    int medicineid;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
        con.Open();
        Panel1.Visible = false;

        
         id = Request.QueryString["id"].ToString();
         medicineid = Convert.ToInt32(id);
         if (!IsPostBack)
         {
             SqlCommand cmd = new SqlCommand();
             cmd.Connection = con;
             cmd.CommandText = "SELECT * FROM AddMedicine WHERE medicineid = '" + id + "'";
             SqlDataReader dr = cmd.ExecuteReader();
             while (dr.Read())
             {
                 txtMedicine.Text = dr["medicine"].ToString();
                 txtHsn.Text = dr["hsn"].ToString();
                 txtMrp.Text = dr["mrp"].ToString();
                 taxable = dr["taxable"].ToString();

                 if (taxable == "yes")
                 {
                     chkTaxable.Checked = true;
                     Panel1.Visible = true;
                     txtTax.Text = dr["taxpercentage"].ToString();
                     txtTaxAmount.Text = dr["taxamount"].ToString();
                     txtTaxExcludedPrice.Text = dr["taxexcluded"].ToString();
                     txtTaxIncludedPrice.Text = dr["taxincluded"].ToString();
                 }



             }
          
         }
         con.Close();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        
    }
    protected void chkTaxable_CheckedChanged(object sender, EventArgs e)
    {

        if (chkTaxable.Checked == true)
        {
            Panel1.Visible = true;
            txtTaxIncludedPrice.Text = txtMrp.Text;
        }
        else
            Panel1.Visible = false;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        con.Open();
        if (chkTaxable.Checked == true)
        {
            taxable = "yes";
            txtTaxIncludedPrice.Text = txtMrp.Text;
        }
        else
        {
            taxable = "no";
            txtTax.Text = " ";
            txtTaxAmount.Text = " ";
            txtTaxExcludedPrice.Text = " ";
            txtTaxIncludedPrice.Text = " ";

        }


        SqlCommand cmd = new SqlCommand("UPDATE AddMedicine SET medicine = '" + txtMedicine.Text + "', hsn = '" + txtHsn.Text + "', mrp = '" + txtMrp.Text + "', taxable = '" + taxable + "', taxpercentage = '" + txtTax.Text + "', taxamount = '" + txtTaxAmount.Text + "', taxexcluded = '" + txtTaxExcludedPrice.Text + "', taxincluded = '" + txtTaxIncludedPrice.Text + "' WHERE medicineid = " + medicineid + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ShowMedicine.aspx");
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("DELETE FROM AddMedicine WHERE medicineid = " + medicineid + "", con);
        cmd1.ExecuteNonQuery();
               con.Close();
        Response.Redirect("ShowMedicine.aspx");
    }
}