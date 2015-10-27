<%@ Page Title="" Language="C#" MasterPageFile="~/ATextEditor.Master" AutoEventWireup="true" CodeBehind="ReadAllText.aspx.cs" Inherits="ASPNET练习.ReadAllText" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Width="300px" Rows="13" TextMode="MultiLine">
        
    </asp:TextBox>
    <br />
    <asp:Button ID="Button1"
        runat="server" Text="保存" onclick="Button1_Click" />
</asp:Content>
