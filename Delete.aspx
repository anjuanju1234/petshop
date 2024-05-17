<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
    
        <asp:GridView ID="gvDelete" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="gvDelete_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="regno" HeaderText="regno" InsertVisible="False" 
                    ReadOnly="True" SortExpression="regno" />
                <asp:BoundField DataField="regid" HeaderText="regid" SortExpression="regid" />
                <asp:BoundField DataField="ownername" HeaderText="ownername" 
                    SortExpression="ownername" />
                <asp:BoundField DataField="owneraddress" HeaderText="owneraddress" 
                    SortExpression="owneraddress" />
                <asp:BoundField DataField="ownerphoneno" HeaderText="ownerphoneno" 
                    SortExpression="ownerphoneno" />
                <asp:BoundField DataField="location" HeaderText="location" 
                    SortExpression="location" />
                <asp:BoundField DataField="petname" HeaderText="petname" 
                    SortExpression="petname" />
                <asp:BoundField DataField="petspecious" HeaderText="petspecious" 
                    SortExpression="petspecious" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="agemonth" HeaderText="agemonth" 
                    SortExpression="agemonth" />
                <asp:BoundField DataField="ageyear" HeaderText="ageyear" 
                    SortExpression="ageyear" />
                <asp:BoundField DataField="weightkilogram" HeaderText="weightkilogram" 
                    SortExpression="weightkilogram" />
                <asp:BoundField DataField="weightgram" HeaderText="weightgram" 
                    SortExpression="weightgram" />
                <asp:ButtonField CommandName="Select" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:anjuConnectionString2 %>" 
            SelectCommand="SELECT * FROM [Registration1]"></asp:SqlDataSource>
    
    </div>
</asp:Content>



