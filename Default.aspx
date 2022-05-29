<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    请选择一个性别：       
     
        <asp:RadioButton ID="RadioButton1" runat="server" Text="男"  GroupName="xb" Checked="true"/>
        <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="xb" />
    &nbsp;
        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
    </div>


    </form>
    <table style="border:1px;width:90%">
       <tr><td>1</td>   <td>2  </td>  <td>3</td></tr>
<tr><td>1</td>   <td>2  </td>  <td>3</td></tr>
    </table>

随意指定输出位置：<br />

    <asp:Table ID="Table1" runat="server" GridLines="Both" style="height: 30px; width: 90%"></asp:Table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        新生入库：<a href="Default2.aspx"> 插入新人到学生</a></p>
</body>
</html>
