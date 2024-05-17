using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Billing : System.Web.UI.Page
{
    SqlConnection con;
    string str = "";
    double grandtotal;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { Session["bill"] = "";
       // ViewState["a"] = 0;
        } 
        con = new SqlConnection("Data Source=DESKTOP-5V0EE5H;Initial Catalog=anju;Integrated Security=True");
      
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int quantity; double  a=0.0;
        double b = 0.0;
        double totalTaxExcluded;
        double totalMrp=0.0;
      
        //if (txtQuantity.Text == " ")
        //     txtQuantity.Text = " ";
        grandtotal =Convert.ToDouble( txttGrantTotal.Text);    
        //else
            quantity = Convert.ToInt32(txtQuantity.Text);
        str = "";
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM AddMedicine WHERE medicineid = " + ddlMedicineName.SelectedValue + "", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            
            str += "<tr><td>";
            str += txtRegistrationNo.Text;
            str += "</td><td>";
            str += dr["medicine"].ToString();
            str += "</td><td>";
            str += dr["mrp"].ToString();
            str += "</td><td>";
            str += txtQuantity.Text;
            str += "</td><td>";
            //str += dr["taxable"].ToString();
            //str += "</td><td>";
            str += dr["taxpercentage"].ToString();
            str += "</td><td>";
            //str += dr["taxamount"].ToString();
            //str += "</td><td>";
           
        //    string b;
        //   int a = (int)(dr["taxexcluded"]);
        ////  a = Convert.ToInt32(b);
          //  string b = " " ;
            if (dr["taxexcluded"].ToString() != "" && dr["taxexcluded"].ToString()!=null)
            a = Convert.ToDouble(dr["taxexcluded"].ToString());
        //  ViewState["a"] = dr["taxexcluded"].ToString();

          ////  b = Session["a"].ToString();
          //  Response.Write(ViewState["a"].ToString());
       //   if (ViewState["a"] is DBNull)
       //   {

          //    int c = Int32.Parse(ViewState["a"].ToString());
              totalTaxExcluded = quantity * a;
              str += totalTaxExcluded;
     
           // str += dr["taxexcluded"].ToString();
            str += "</td><td>";

            if (dr["taxincluded"].ToString() != "" && dr["taxincluded"].ToString() != null)
                b = Convert.ToDouble(dr["taxincluded"].ToString());
            totalMrp = quantity * b;
            grandtotal =  grandtotal + totalMrp;
            str += totalMrp;

          //  str += dr["taxincluded"].ToString();
            str += "</td></tr>";


        }
      
       Session["bill"] += str;
      //      Literal1.Text = "<table>" + str + "</table>";
    //    Literal1.Text ="<table>"+   Session["bill"].ToString()  + "</table>";
       Literal1.Text = "<table border='1'><tr><th>Registration no </th><th> Medicine  </th><th> MRP </th><th> Quantity </th><th> Tax % </th><th>Tax excluded Price  </th><th> Total </th></tr>" + Session["bill"].ToString() + "</table>";
       txttGrantTotal.Text = Convert.ToString(grandtotal);
       txtCredit.Text = "";
       txtCash.Text = "";
       txtUPI.Text = "";
       txtCard.Text = "";
       con.Close();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Payment(registrationno,total,card,cash,upi,credit,status) VALUES ( '" + txtRegistrationNo.Text + "','" + txttGrantTotal.Text + "','" + txtCard.Text + "','" + txtCash.Text + "','" + txtUPI.Text + "','" + txtCredit.Text + "','" + 0 + "') ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Billing.aspx");
        
    }
}