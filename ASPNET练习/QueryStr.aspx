<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStr.aspx.cs" Inherits="ASPNET练习.QueryStr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />
        <br />
        <br />
        <asp:Literal ID="Literal1" runat="server" Text="欢迎"></asp:Literal>
    
    </div>
    </form>
</body>
</html>
