using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
            
    }

    protected string CheckBoxList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selval = "";
        for (int i = 0; i < CheckBoxList7.Items.Count; i++)
        {
            if (CheckBoxList7.Items[i].Selected)
            {
                selval += CheckBoxList7.Items[i].Value + CheckBoxList7;
            }
        }
        return selval;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string number,name, sex, high = " ";
        string address, birthday, hobby;
        number = Request.Form["Text1"].ToString();
        sex= RadioButtonList2.SelectedValue;
        name = Request.Form["Text2"].ToString();
        high = Request.Form["Text3"].ToString();

        address = Request.Form["DropDownList1"].ToString();

        hobby = "";
        for (int i = 0; i < CheckBoxList7.Items.Count; i++)
        {
            if (CheckBoxList7.Items[i].Selected)
            {
                hobby += CheckBoxList7.Items[i].Value+" ";
            }
        }

        birthday = Calendar1.SelectedDate.ToString();

        Response.Write("<script language=javascript>alert(number,sex,name,high,address,birthday,hobby);</" + "script>");
        System.Diagnostics.Debug.Write(number + " ");
        System.Diagnostics.Debug.Write(sex + " ");
        System.Diagnostics.Debug.Write(name + " ");
        System.Diagnostics.Debug.Write(high+" ");
        System.Diagnostics.Debug.Write(address + " ");
        System.Diagnostics.Debug.Write(birthday + " ");
        System.Diagnostics.Debug.Write(hobby + " ");
        Response.Write("<br/>" + number.ToString()+" ");
        Response.Write("<br/>" + sex.ToString() + " ");
        Response.Write("<br/>" + name.ToString() + " ");
        Response.Write("<br/>" + high.ToString() + " ");
        Response.Write("<br/>" + address.ToString() + " ");
        Response.Write("<br/>" + birthday.ToString() + " ");
        Response.Write("<br/>" + hobby.ToString() + " ");
        string cnstr = "server=LAPTOP-C8G9MQ73; database=学生管理; uid=sa;pwd=123456;";
        SqlConnection cn = new SqlConnection(cnstr);
        cn.Open();
        string sql = "insert into 学生表(学号, 姓名, 性别, 生日, 身高)values('"+number+"','"+name+"','"+sex+"','"+birthday+"','"+high+"')";
        SqlCommand cmd = new SqlCommand(sql, cn);
/*        SqlDataReader dr = cmd.ExecuteReader();*/
/*        dr.Read();
        Response.Write(dr["性别"].ToString());
        for (int i = 0; i < dr.FieldCount; i++)
            Response.Write("<br/>" + dr[i].ToString() + "  ");
        dr.Close();*/
        cn.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string name;
        name= Request.Form["Text4"].ToString();
        string cnstr = "server=LAPTOP-C8G9MQ73; database=学生管理; uid=sa;pwd=123456;";
        SqlConnection cn = new SqlConnection(cnstr);
        cn.Open();
        string sql = "select * from 学生表 where 姓名='" + name + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Response.Write(dr["性别"].ToString());
        for (int i = 0; i < dr.FieldCount; i++)
            Response.Write("<br/>" + dr[i].ToString() + "  ");
        dr.Close();
        cn.Close();
    }



}