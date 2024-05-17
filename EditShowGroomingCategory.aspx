<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="EditShowGroomingCategory.aspx.cs" Inherits="EditShowGroomingCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
 <asp:Panel ID="Panel1" runat="server" Width="293px">
        <table class="style1">
            <tr>
                <td class="style2" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="GROOMING CATEGORY"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="PetType"></asp:Label>
                </td>
                <td colspan="2">
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
                <td class="style4" colspan="2">
                    <asp:TextBox ID="txtGroomingTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnEdit" runat="server" onclick="btnEdit_Click" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                        Text="Delete" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </div>

</asp:Content>

