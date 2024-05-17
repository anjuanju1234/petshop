<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="EditMedicine.aspx.cs" Inherits="EditMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
        .style1
        {
            width: 31%;
        }
    .style3
    {
        width: 375px;
    }
    .style4
    {
        height: 23px;
        width: 375px;
    }
    .style6
    {
        height: 23px;
        width: 605px;
    }
    .style7
    {
        width: 605px;
    }
        .style8
        {
            width: 41%;
            height: 111px;
        }
        .style17
        {
            width: 537px;
        }
        .style19
        {
            width: 511px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table class="style1">
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="ADD MEDICINE"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Medicine"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtMedicine" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Text="HSN"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtHsn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="MRP"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtMrp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Taxable"></asp:Label>
            </td>
            <td class="style7">
                <asp:CheckBox ID="chkTaxable" runat="server" 
                    oncheckedchanged="chkTaxable_CheckedChanged" AutoPostBack="true"/>
            </td>
        </tr>
    </table>
        <asp:Panel ID="Panel1" runat="server">
            <table class="style8">
                <tr>
                    <td class="style19">
                        <asp:Label ID="Label7" runat="server" Text="Tax (%)"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="txtTax"  runat="server" onkeyup="calculate()"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        <asp:Label ID="Label8" runat="server" Text="Tax Amount"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="txtTaxAmount" runat="server" style="margin-left: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        <asp:Label ID="Label9" runat="server" Text="Tax Excluded Price"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="txtTaxExcludedPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        <asp:Label ID="Label10" runat="server" Text="Tax Included Price"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="txtTaxIncludedPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
        Width="79px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnEdit" runat="server" onclick="btnEdit_Click" Text="Edit" 
        Width="73px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
        Text="Delete" Width="74px" />
        <br />
    <script>
        function calculate() {
            var mrp = document.getElementById('<%= txtMrp.ClientID  %>').value;
            var tax = document.getElementById('<%= txtTax.ClientID  %>').value;



            var taxamount;
            var excluded;
            //  var included;

            taxamount = (mrp * tax) / 100;


            document.getElementById('<%=txtTaxAmount.ClientID %>').value = taxamount;
            excluded = document.getElementById('<%= txtMrp.ClientID %>').value;

            excluded = mrp - taxamount;
            document.getElementById('<%=txtTaxExcludedPrice.ClientID %>').value = excluded;
            //             alert(mrp);
            //    included = excluded + taxAmount;
            //            alert(included);

            // var tax = Convert.ToInt32(txtTax.Text);
            // alert(mrp);
        }
    </script>
</asp:Content>

