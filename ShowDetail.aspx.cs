using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShowDetail : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
        if (!IsPostBack)
        {
            txtRegno.Text = Session["regno"].ToString();
           txtOwnerName.Text = Session["ownername"].ToString();
         txtAddress.Text =   Session["owneraddress"].ToString();
          txtPhoneno.Text =  Session["ownerphoneno"].ToString();
           txtLocation .Text= Session["location"].ToString();
          txtPetname.Text =  Session["petname"].ToString();
         txtSpecious.Text =   Session["petspecious"].ToString();
            
          txtMonth.Text =  Session["agemonth"].ToString();
          txtYear.Text =   Session["ageyear"].ToString();
          txtKilo.Text =  Session["weightkilogram"].ToString();
          txtGram.Text =   Session["weightgram"].ToString();
          if (Session["gender"].ToString() == "female")
          {
              rbtnFemale.Checked = true;
          }
          else
          {
              rbtnMale.Checked = true;
              Session["gender"] = "male";
          }

        }
    
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE Registration1 SET ownername = '" + txtOwnerName.Text +"', owneraddress = '" + txtAddress.Text + "', ownerphoneno = '" + txtPhoneno.Text + "', location = '" + txtLocation.Text + "', petname = '" + txtPetname.Text + "', petspecious = '" + txtSpecious.Text + "', gender = '" + Session["gender"] + "', agemonth = '" + txtMonth.Text + "', ageyear = '" + txtYear.Text + "', weightkilogram = '" + txtKilo.Text + "', weightgram = '" + txtGram.Text + "' WHERE regno = " + Session["regno"] + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Edit.aspx");
       

    }
}