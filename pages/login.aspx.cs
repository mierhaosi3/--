using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class login : System.Web.UI.Page
{
    static int count = 3, i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string num = TextBox1.Text;
        string pwd = TextBox2.Text;
        string sf = DropDownList1.SelectedItem.Text;
        string sql = "select trim(密码) from "+ sf +" where "+ sf +"号 ='" + num + "'";
        DataTable T = new Class1().GetDateTable(sql);
        if (T.Rows.Count == 0)
        {string scriptString = "alert('此用户不存在！');";
            Response.Redirect("resgest"); 
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);}
        else {
            string pwd1 = T.Rows[0][0].ToString();
            if (i < count)
            {
                if (pwd1 != pwd)
                {
                    i++;
                    string scriptString = "alert('密码或者用户名错误，还有" + (count - i) + "次机会');";
                    TextBox2.Text = "";TextBox2.Focus();
                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);
                    //Response.Write("密码或者用户名错误，还有" + (count - i) + "机会");
                }
                else
                /*登陆成功进行重定向*/
                {

                    /*scriptString = "alert('登陆成功');";*/
                    Session["yhm"] = num;
                    if (sf == "学生")
                    {
                        Response.Redirect("student_main.aspx?userName=");
                       
                    }
                    else if (sf == "教师")
                    {
                        Response.Redirect("teacher_main.aspx");
                        
                    }
                    else
                    {
                        Response.Redirect("admin_main.aspx");
                    }
                }

            }
            if (i == 3)
                Response.Redirect("login.aspx");

        }   
       
    }

}