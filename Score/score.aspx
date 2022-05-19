<%@ Page Language="C#" AutoEventWireup="true" CodeFile="score.aspx.cs" Inherits="Score_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            1 增加成绩 <a href="score.aspx",target="_blank">入库</a>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            2 删除成绩 <a href="score.aspx",target="_blank">删除</a>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            3 修改成绩 <a href="score.aspx",target="_blank">修改</a>
            4 阿巴阿巴 <a href="score.aspx",target="_blank">阿巴阿巴</a>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
