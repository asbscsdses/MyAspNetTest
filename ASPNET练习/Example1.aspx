<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example1.aspx.cs" Inherits="ASPNET练习.Example1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #FF6600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        练习：动态添加项，并选择输出<br />
        <br />
        输入文本内容：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加至动物" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="添加至食物" />
        <br />
        <br />
        动物：<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" 
            Width="96px">
            <asp:ListItem>猫</asp:ListItem>
        </asp:DropDownList>
&nbsp;<br />
&nbsp;<asp:Panel ID="Panel1" runat="server" style="text-align: center">
            食物：</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button3" runat="server" Text="输出选择" />
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="64px" Width="479px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
