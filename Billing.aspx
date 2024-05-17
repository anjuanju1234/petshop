<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 32%;
        }
        .style2
        {
        }
        .style4
        {
            height: 23px;
            width: 360px;
        }
        .style5
        {
            width: 360px;
        }
        .style6
        {
            width: 407px;
        }
        .style7
        {
            height: 23px;
            width: 407px;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            height: 23px;
        }
        .style10
        {
            height: 23px;
            width: 178px;
        }
        .style11
        {
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="BILLING"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="Registration No"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtRegistrationNo" runat="server" Width="128px" class="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text="Medicine Name"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlMedicineName" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="medicine" 
                    DataValueField="medicineid">
                    <asp:ListItem>Select any</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anjuConnectionString %>" 
                    SelectCommand="SELECT [medicineid], [medicine] FROM [AddMedicine]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtQuantity" runat="server" Width="128px" class="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" 
                    Width="74px" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Grant Total"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txttGrantTotal" runat="server" class="txt">0.0</asp:TextBox>

    <br />
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="832px">
        <table class="style8">
            <tr>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="PAYMENT MODE"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label7" runat="server" Text="Cash"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label8" runat="server" Text="Card"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label9" runat="server" Text="UPI"></asp:Label>
                </td>
                <td class="style10">
                    Credit</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtCash" runat="server" onkeyup="payment()" class="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtCard" runat="server" onkeyup="payment()" class="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtUPI" runat="server" onkeyup="payment()" class="txt"></asp:TextBox>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtCredit" runat="server" class="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="74px" 
                        onclick="btnSave_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <script>
       
            function payment() {


                var cash = document.getElementById('<%= txtCash.ClientID  %>').value;
                var card = document.getElementById('<%= txtCard.ClientID  %>').value;
                var upi = document.getElementById('<%= txtUPI.ClientID  %>').value;
                var granttotal = document.getElementById('<%= txttGrantTotal.ClientID  %>').value;

                var credit;
                credit = granttotal;
                credit = credit - cash - card - upi;
            
                document.getElementById('<%=txtCredit.ClientID %>').value = credit;
            }

           

    </script>
</asp:Content>

