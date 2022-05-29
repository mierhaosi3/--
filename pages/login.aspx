<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生成绩管理系统</title>
    <style type="text/css">
        body {
           position:fixed;
           top: 0;
           left: 0;
		   width:100%;
		   height:100%;
           min-width: 1000px;
           /*background-image:url(./Images/bg1.jpg);*/
           background-color:rgb(100,150,136);


        }
        .login {
            text-align:center;
            width:280px;
            height:400px;
            background-color:white;
            position:relative;
            margin:0 auto;/*居中*/
            border-radius:5px;
            box-shadow:  0px 0px 5px #333333;
            margin-top:80px;
        }
        .title {
            padding-top:60px;
            font-size:20px;
            padding-bottom:20px;
        }
        .num,.pwd,.user {
            padding:20px 0 10px 0;
        }
        .btn {
            padding-top:20px;
        }
        #Button1 {
            background-color:rgb(0,150,136);
            width:80px;
            height:30px;
            border-radius:5px;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="login">
            <div class="title"><asp:Label ID="Info" runat="server" Text="学生成绩管理系统"></asp:Label></div>
            <div class="num">
                账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
           <div class="pwd">密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></div> 
            <div class="user">
                用户：<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>---请选择用户---</asp:ListItem>
                <asp:ListItem>学生</asp:ListItem>
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>管理员</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div class="btn"><asp:Button ID="Button1" runat="server" Text="立即登录" BorderStyle="None" OnClick="Button1_Click" /></div>
        </div>
    </form>
</body>
</html>
