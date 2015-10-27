<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CssCookie.aspx.cs" Inherits="ASPNET练习.CssCookie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="85px">
            <asp:ListItem Value="red">红</asp:ListItem>
            <asp:ListItem Value="green">绿</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="74px">
            <asp:ListItem Value="12px">12</asp:ListItem>
            <asp:ListItem Value="28px">28</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="设置Cookie" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="加载CSS from cookie" />
    
    </div>
    </form>
</body>
</html>
