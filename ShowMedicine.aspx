<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="ShowMedicine.aspx.cs" Inherits="ShowMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
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
        <asp:ButtonField CommandName="Select" Text="View" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:anjuConnectionString %>" 
    SelectCommand="SELECT * FROM [AddMedicine]"></asp:SqlDataSource>
</asp:Content>

