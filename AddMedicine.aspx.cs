using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddMedicine : System.Web.UI.Page
{
    SqlConnection con;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
        Panel1.Visible = false;
    }

    protected void chkTaxable_CheckedChanged(object sender, EventArgs e)
    {
        if (chkTaxable.Checked == true)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
            
        
        txtTaxIncludedPrice.Text = txtMrp.Text;

                    
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {
        string taxable;
        con.Open();
        if (chkTaxable.Checked == true) 
            taxable = "yes"; 
        else
            taxable = "no";
          

        SqlCommand cmd = new SqlCommand("INSERT INTO AddMedicine(medicine,hsn,mrp,taxable,taxpercentage,taxamount,taxexcluded,taxincluded) VALUES ('" + txtMedicine.Text + "','" + txtHsn.Text + "','" + txtMrp.Text + "','" + taxable + "','" + txtTax.Text + "','" + txtTaxAmount.Text +"','" + txtTaxExcludedPrice.Text + "','" + txtTaxIncludedPrice.Text +"')", con);
        cmd.ExecuteNonQuery();
        if(taxable == "yes")
            Panel1.Visible = true;

        con.Close();
        Response.Redirect("AddMedicine.aspx");
    }
}