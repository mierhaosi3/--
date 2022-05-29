<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resgest.aspx.cs" Inherits="resgest_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
         *{
            margin:0px;
            padding: 0px;
            box-sizing: border-box;
        }
        body{
            background: url("img/1.png") no-repeat center;
        }
        .rg_layout{
            width: 900px;
            height: 500px;
            /*水平居中*/
            margin: auto;
            margin-top: 50px;
        }
        .rg_left{
            /*border: 1px solid red;*/
            float: left;
            margin:20px;       //外边距;
            width: 128px;
        }
        .rg_left > p:first-child{
            color: #FFD026;
            font-size: 20px;
        }
        .rg_left>p:last-child{
            color: #A6A6A6;
            font-size: 20px;
        }
        .rg_center
        {
            float: left;
            height: 100px;
            width: 450px;
        }
        .rg_right{
            /*border: 1px solid red;*/
            float: right;
        }
        .rg_right>p{
            color: pink;
            font-size: 20px;/* //字体大小*/
        }
        .td_left{
            width:150px;
            text-align: right;
            height: 45px;
        }
        .td_right{
            padding-left: 50px; /*//右边距*/
        }
        #username,#password,#email,#name,#phone,#birthday{
            width: 251px;
            height: 35px;
            border-radius: 5px;
            padding-left: 10px;
        }
        #but_sub{
            margin: auto;
            width: 150px;
            height: 40px;
            background-color: #ffc700;
            border: 1px solid #ffc700;
            margin-top: 25px;
        }
        .resgest{
            width:40px;
            height:30px;
            margin-left:40%;
            background-color:antiquewhite;
            border:2px solid red
        }
        .name{
            margin-left:18.5%;
            padding:20px 0 10px 0;
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
            margin-left:48%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="rg_layout">
        <div class="rg_left">
        <p> 添加</p>
        <p>Use_add</p>
        </div>
           <div class="user">
                用户：<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>---用户类型---</asp:ListItem>
                <asp:ListItem>学生</asp:ListItem>
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>管理员</asp:ListItem>
            </asp:DropDownList>
            </div>                   
          <div class="num">账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
          <div class="name">密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></div>
          <div class="name">姓名：<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></div>
          <div class="name"><asp:Label ID="Label8" runat="server" Text="性别: " CssClass="td_left"></asp:Label>
            <asp:RadioButton ID="rbtn_1" runat="server" Text="男" />
            <asp:RadioButton ID="rbtn_2" runat="server" Text="女" />
                       </div>

        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click1" />
    </div>
    </form>
</body>
</html>
