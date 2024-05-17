<%@ Page Title="" Language="C#" MasterPageFile="~/Petshop.master" AutoEventWireup="true" CodeFile="ShowDetail.aspx.cs" Inherits="ShowDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
     <asp:Panel ID="Panel1" runat="server">
    
    
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label18" runat="server" Text="Register no"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRegno" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Owner Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtOwnerName" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Phone no"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocation" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    
   
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <table class="style5">
            <tr>
                <td class="style26">
                    <asp:Label ID="Label6" runat="server" Text="Pet Name"></asp:Label>
                </td>
                <td class="style7" colspan="4">
                    <asp:TextBox ID="txtPetname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label7" runat="server" Text="Specious"></asp:Label>
                </td>
                <td class="style7" colspan="4">
                    <asp:TextBox ID="txtSpecious" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style7" colspan="4">
                    <asp:Label ID="Label16" runat="server" Text="Female"></asp:Label>
                    <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="gender" />
                    &nbsp; &nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Male"></asp:Label>
                    <asp:RadioButton ID="rbtnMale" runat="server" GroupName="gender" />
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label9" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="style23">
                    <asp:Label ID="Label12" runat="server" Text="Year"></asp:Label>
                </td>
                <td class="style19">
                    <asp:TextBox ID="txtYear" runat="server" Width="44px"></asp:TextBox>
                </td>
                <td class="style21">
                    <asp:Label ID="Label13" runat="server" Text="Month"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtMonth" runat="server" Width="44px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label10" runat="server" Text="Weight"></asp:Label>
                </td>
                <td class="style24">
                    <asp:Label ID="Label14" runat="server" Text="Kilo"></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtKilo" runat="server" Width="44px"></asp:TextBox>
                </td>
                <td class="style22">
                    <asp:Label ID="Label15" runat="server" Text="Gram"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtGram" runat="server" Width="44px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td class="style7" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td class="style7" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEdit" runat="server" onclick="btnEdit_Click" Text="Edit" 
                        Width="45px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>



