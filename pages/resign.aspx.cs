using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string xh = TextBox1.Text.Trim();
        string xm = TextBox2.Text.Trim();
        string xb = TextBox3.Text.Trim();
        string sql = "insert into 学生(学生号,姓名,性别)values('" + xh + "','" + xm + "','" + xb + "')";
        new Class1().insertIntoTable(sql);

    }
}