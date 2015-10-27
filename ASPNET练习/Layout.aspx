<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Layout.aspx.cs" Inherits="ASPNET练习.Layout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #head,#foot{ border: 1px solid gray;
            margin: 5px;}
            .leftcss{ float: left;width: 200px;border: 1px solid black;margin: 5px}
            .rightcss{ float: right;width: 1000px;border: 1px solid black;margin: 5px}
            .clrcss{clear: both}
            .l1css{ float: left;width: 100px;height: 100px;border: 1px solid black;margin: 5px}
            .r1css{ float: right;width: 800px;height: 100px;border: 1px solid black;margin: 5px}
            .l2css{ float: left;width: 200px;height: 100px;border: 1px solid black;margin: 5px}
            .r2css{ float: right;width: 500px;height: 100px;border: 1px solid black;margin: 5px}
            .l3css{ float: left;width: 300px;height: 100px;border: 1px solid black;margin: 5px}
            .r3css{ float: right;width: 300px;height: 100px;border: 1px solid black;margin: 5px}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="head"></div>
    <div id="left" class="leftcss">111<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
    <div id="right" class="rightcss">
        <div id="l1" class="l1css">l1</div>
        <div id="r1" class="r1css">r1</div>
        <div id="l2" class="l2css">l2</div>
        <div id="r2" class="r2css">r2</div>
        <div id="l3" class="l3css">l3</div>
        <div id="r3" class="r3css">r3</div>
    </div>
    <div id="clear" class="clrcss"></div>
    <div id="foot"></div>
    </div>
    </form>
</body>
</html>
