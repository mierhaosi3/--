using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
    
public partial class Score_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tool tool1 = new tool();
        tool1.FileList("管理员号", "姓名", DropDownList1);
        tool1.FileList("课程号", "课程表", DropDownList2);
    }
}