<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="GroomingCategory.aspx.cs" Inherits="GroomingCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 148px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <asp:Panel ID="Panel1" runat="server" Width="293px">
        <table class="style1">
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="GROOMING CATEGORY"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="PetType"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlPettype" runat="server">
                        <asp:ListItem Value="Selectany">Select Any</asp:ListItem>
                        <asp:ListItem Value="Cat">Cat</asp:ListItem>
                        <asp:ListItem Value="Dog">Dog</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Grooming Title"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtGroomingTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="67px" 
                        onclick="btnSave_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
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

    

    </div>
</asp:Content>

