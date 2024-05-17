using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
    
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        
        string str="";
       
        if(rbtnFemale.Checked == true)
            str = "female";
        //else
         
        //    str = "male";
        if(rbtnMale.Checked == true)
            str = "male";
         con.Open();
      
        
       
        if ((txtOwnerName.Text == "") || (txtPhoneno.Text == "") || (txtAddress.Text == "") || (txtLocation.Text == ""))
        {
            Panel3.Visible = true;

        }
        else
        {
            Panel3.Visible = false;
            SqlCommand cmd = new SqlCommand("INSERT INTO Registration1 (regid,ownername,owneraddress,ownerphoneno,location,petname,petspecious,gender,agemonth,ageyear,weightkilogram,weightgram) VALUES ('" + 2024 + "','" + txtOwnerName.Text + "','" + txtAddress.Text + "','" + txtPhoneno.Text + "','" + txtLocation.Text + "','" + txtPetname.Text + "','" + txtSpecious.Text + "','" + str + "','" + txtMonth.Text + "','" + txtYear.Text + "','" + txtKilo.Text + "','" + txtGram.Text + "') ", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
    }
   
    
    protected void btnCancel_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}