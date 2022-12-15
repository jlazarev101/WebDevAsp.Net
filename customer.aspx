<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="BransBakery_JustinLazarev.customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 class="subheading">Customer Order List</h1>
    <asp:GridView ID="dgv" runat="server" Height="179px" Width="336px" AllowPaging="True" CssClass="dgv" Font-Size="12px">
    </asp:GridView>
    

<asp:Button ID="btnShowAll" runat="server" Height="40px" OnClick="btnShowAll_Click" Text="Show All Orders" Width="175px" />
<asp:Button ID="btnShowFrom" runat="server" Height="40px" OnClick="btnShowFrom_Click" Text="Show Orders From" Width="175px" />
    

    <asp:TextBox ID="txtSelPro" runat="server" Height="35px" Width="163px">Input Products</asp:TextBox>
    

</asp:Content>
