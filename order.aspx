<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="BransBakery_JustinLazarev.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="intro">
  <h1 class="subheading">Order A Cake</h1>
    </div>
    <div class="input">
        <table>
        
        <tr>  <td class="auto-style1">
                &nbsp;</td>
             <td>
        <asp:Label ID="lblFn" runat="server" Text="Firstname" Width="150px"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtFn" runat="server" Height="22px" Width="170px"></asp:TextBox>

            </td>
          </tr>
        <tr><td class="auto-style1">
                &nbsp;</td>
             <td>
        <asp:Label ID="lblSn" runat="server" Text="Surname" Width="150px"></asp:Label>
            <td>
        <asp:TextBox ID="txtSn" runat="server" Height="22px" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td></tr>
        <tr><td class="auto-style1">
                &nbsp;</td>
             <td>
        <asp:Label ID="lblEm" runat="server" Text="Email" Width="150px"></asp:Label>
            <td>
        <asp:TextBox ID="txtEm" runat="server" Height="22px" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td></tr>
        <tr><td class="auto-style1">
                &nbsp;</td>
             <td>
        <asp:Label ID="lblPro" runat="server" Text="Product" Width="150px"></asp:Label>
            <td>
        <asp:DropDownList ID="ddlPro" runat="server" Height="22px" Width="180px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
            <asp:ListItem>Sourdough</asp:ListItem>
            <asp:ListItem>Sodabread</asp:ListItem>
            <asp:ListItem>Wholegrain</asp:ListItem>
            <asp:ListItem>White</asp:ListItem>
            <asp:ListItem>Croissant</asp:ListItem>
            <asp:ListItem>PainAuChoclat</asp:ListItem>
            <asp:ListItem>Cookies</asp:ListItem>
            <asp:ListItem>Scones</asp:ListItem>
        </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCon %>" SelectCommand="SELECT [Name] FROM [Items]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td></tr>
        <tr><td class="auto-style1">
                &nbsp;</td>
             <td>
        <asp:Label ID="lblQy" runat="server" Text="Quantity" Width="150px"></asp:Label>
            <td>
        <asp:TextBox ID="txtQy" runat="server" Height="22px" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr><td></td><td>
            <asp:Button ID="btnTotal" runat="server" Font-Size="14pt" Height="35px" Text="Show Total" Width="135px" OnClick="btnTotal_Click" />
            </td><td>
                    <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="14pt"></asp:Label>
                </td></tr>
            <tr><td></td>
                <td>
                    &nbsp;</td>
                <td><asp:Button ID="btnSub" runat="server" Height="45px" Text="Submit" Width="135px" OnClick="btnSub_Click" Font-Size="14pt" CssClass="button" OnClientClick="javascript:alert('Your Order Has Been Submitted')" /></td></tr>
                
        </table>
        
        <br/>
        
        <br/>
        </div>
    </asp:Content>