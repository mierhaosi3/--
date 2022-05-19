<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div> 录入新生数据
      学号： <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
      姓名： <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
      姓别： <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="入库" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
