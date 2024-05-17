<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="ShowGroomingCategory.aspx.cs" Inherits="ShowGroomingCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="pettype" HeaderText="pettype" 
                    SortExpression="pettype" />
                <asp:BoundField DataField="grooming" HeaderText="grooming" 
                    SortExpression="grooming" />
                <asp:BoundField DataField="amount" HeaderText="amount" 
                    SortExpression="amount" />
                <asp:ButtonField CommandName="Select" Text="View" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:anjuConnectionString %>" 
            SelectCommand="SELECT * FROM [GroomingCategory]"></asp:SqlDataSource>
        <br />

    </asp:Panel>
</asp:Content>

