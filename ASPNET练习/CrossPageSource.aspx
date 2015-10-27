<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPageSource.aspx.cs" Inherits="ASPNET练习.CrossPageSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        标题：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        人员：<asp:ListBox ID="ListBox1" runat="server" Height="88px" 
            SelectionMode="Multiple" Width="144px">
            <asp:ListItem>全体</asp:ListItem>
            <asp:ListItem>技术</asp:ListItem>
            <asp:ListItem>售后</asp:ListItem>
        </asp:ListBox>
        <br />
        日期：<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/CrossPageTarget.aspx" 
            Text="Button" />
    
    </div>
    </form>
</body>
</html>
