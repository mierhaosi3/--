using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class resgest_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string sf = DropDownList1.SelectedItem.Text;
        string num = TextBox1.Text;
        string pwd = TextBox2.Text;
        string name = TextBox3.Text;
        string male = null;
        if (rbtn_1.Checked == true) { male = rbtn_1.Text; }
        if (rbtn_2.Checked == true) { male = rbtn_2.Text; }
        string sql = "Insert into "+ sf +"("+sf+"号,姓名,性别,密码) values ('"+ num + "','" + name + "','" + male + "','" + pwd + "')";
        Class1 class1=new Class1();
        class1.insertIntoTable(sql);
        Response.Write("<script>alert('添加成功,跳转到登陆界面')</script>");
        Response.Redirect("login.aspx");
    }
}