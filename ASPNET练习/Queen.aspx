<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Queen.aspx.cs" Inherits="ASPNET练习.Queen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table{ border: 1px solid black;
            border-collapse: collapse;}
        td{ width: 40px;height: 40px;border: 1px solid red;}
        td.black{ background-color: black;}
        td.queen{background-image: url(image/queen.png); background-repeat: no-repeat;background-position: center;}
        #left{ float: left;width: 200px;}
        #right{ float: right;width: 490px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 700px; margin: 0 auto">
        <h1 style="text-align: center; border-bottom: 1px solid black;">八皇后问题</h1>
        <div id="left">
        <asp:Button ID="Button1" runat="server" Text="计算" onclick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Width="200" 
                Height="300" onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        </div>
        <div id="right">
        <asp:PlaceHolder ID="holder"
            runat="server"></asp:PlaceHolder>
        </div>
    </div>
    </form>
</body>
</html>
