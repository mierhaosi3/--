<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 21px;
        }
        .form-group {
            width: 300px;
            height: 52px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="学号"></asp:Label>
        ：<input id="Text1" type="text" name="Text1" aria-hidden="False"/><br />
        <br />
        <div class="form-group">
            <b clore="red"> 性别</b>
        <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
            ：&nbsp;&nbsp;&nbsp <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="16px" RepeatDirection="Horizontal" Width="187px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
             </div>
&nbsp;<p style="width: 277px">
        <asp:Label ID="Label3" runat="server" Text="姓名"></asp:Label>
            ：<input id="Text2" type="text" name="Text2"/></p>
        <p style="width: 321px">
        <asp:Label ID="Label4" runat="server" Text="身高"></asp:Label>
            ：<input id="Text3" type="text" name="Text3" /></p>
        <p>
        <asp:Label ID="Label6" runat="server" Text="家庭住址"></asp:Label>
            :</p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" name="DropDownList1" DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myuseConnectionString2 %>" SelectCommand="SELECT [name] FROM [tb_province]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Label ID="Label7" runat="server" Text="生日"></asp:Label>
            :<asp:Calendar ID="Calendar1" runat="server" DayHeaderStyle-Font-Names="" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="407px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </p>
        <p>
        <asp:Label ID="Label8" runat="server" Text="爱好" ></asp:Label>
            :<asp:CheckBoxList ID="CheckBoxList7" name="" runat="server" Width="168px" RepeatColumns="2" RepeatDirection="Horizontal"  >
                <asp:ListItem>唱</asp:ListItem>
                <asp:ListItem>跳</asp:ListItem>
                <asp:ListItem>rap</asp:ListItem>
                <asp:ListItem>篮球</asp:ListItem>
            </asp:CheckBoxList>
            
        </p>
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" Width="293px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="查询" Width="496px" OnClick="Button2_Click" />
        <input id="Text4" type="text" name="Text4"/></form>

</body>
</html>
