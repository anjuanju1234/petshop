<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="medicineid" HeaderText="medicineid" 
                InsertVisible="False" ReadOnly="True" SortExpression="medicineid" />
            <asp:BoundField DataField="medicine" HeaderText="medicine" 
                SortExpression="medicine" />
            <asp:BoundField DataField="hsn" HeaderText="hsn" SortExpression="hsn" />
            <asp:BoundField DataField="mrp" HeaderText="mrp" SortExpression="mrp" />
            <asp:BoundField DataField="taxable" HeaderText="taxable" 
                SortExpression="taxable" />
            <asp:BoundField DataField="taxpercentage" HeaderText="taxpercentage" 
                SortExpression="taxpercentage" />
            <asp:BoundField DataField="taxamount" HeaderText="taxamount" 
                SortExpression="taxamount" />
            <asp:BoundField DataField="taxexcluded" HeaderText="taxexcluded" 
                SortExpression="taxexcluded" />
            <asp:BoundField DataField="taxincluded" HeaderText="taxincluded" 
                SortExpression="taxincluded" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:anjuConnectionString %>" 
        SelectCommand="SELECT * FROM [AddMedicine]"></asp:SqlDataSource>
    <br />
</asp:Content>

