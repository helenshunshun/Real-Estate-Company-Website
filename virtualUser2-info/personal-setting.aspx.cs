using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 个人设置 : System.Web.UI.Page
{
    string[,] assignment = new string[13, 32];
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.SelectedDate = DateTime.Today;
        assignment[3, 15] = "任务分配会议";
        assignment[4, 30] = "一期工程验收";
        assignment[5, 8] = "基层检查";
        assignment[5, 25] = "各部门会议";
        assignment[6, 12] = "项目汇报";
        assignment[7, 1] = "招标采购开始";
        assignment[7, 23] = "员工培训";
        assignment[8, 14] = "各部门会议";
        assignment[9, 30] = "二期工程验收";
        assignment[10, 28] = "监督巡查";
        assignment[11, 21] = "出差一周";
        assignment[12, 29] = "各部门会议";
        assignment[1, 10] = "年终总结";
        assignment[2, 26] = "审批项目";

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "您好，您选择的日期是" + Calendar1.SelectedDate.ToShortDateString().ToString();
    }
    protected void upload_Click(object sender, EventArgs e)
    {
        Boolean fileOK = false;
        //定义一个布尔变量用来判断文件格式和大小是否符合要求        
        string nam = fileupload.PostedFile.FileName;
        int i = nam.LastIndexOf(".");
        string newext = nam.Substring(i); //取得文件扩展名
        DateTime now = DateTime.Now;
        String newname = now.DayOfYear.ToString()
       + fileupload.PostedFile.ContentLength.ToString();
        if (fileupload.HasFile)
        {
            string[] allowedextension = { ".gif", ".jpeg", ".jpg", "txt", ".doc", ".mp3", ".wma",".swf" };
            //定义一个规定格式文件的扩展名的数组
            for (int a = 0; a < allowedextension.Length; a++)
            {
                if (newext == allowedextension[a]
        && (fileupload.PostedFile.ContentLength < 8200000))
                { fileOK = true; }
                //只有当文件格式正确和文件小于500k的时候，fileOK 才为真
            }
        }
        if (fileOK)
        {
            try
            {
                fileupload.PostedFile.SaveAs(Server.MapPath("~\\upload\\" + newname + newext));
                Label2.Text = "上传成功";
            }
            catch { Label2.Text = "上传失败"; }
        }
        else
        { Label2.Text = "文件格式不对或者文件太大"; }


    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        CalendarDay d = e.Day;
        TableCell c = e.Cell;
        if (assignment[d.Date.Month, d.Date.Day] != null)
        {
           
            c.Controls.Add(new LiteralControl("<br><span style='font-size:8pt;color:#993300'>" + assignment[d.Date.Month, d.Date.Day] + "</span></font>"));
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}