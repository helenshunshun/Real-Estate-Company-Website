using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class addtreenode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
TreeNode jx = new TreeNode("教学", "教学", "~/image/office14.jpg", "jiaoxue.aspx", "blank");
TreeView1.Nodes.Add(jx);
TreeNode jxsub = new TreeNode("基础医学院", "基础医学院", "~/image/Xbutton54.jpg", "jichu.aspx", "blank");
TreeView1.Nodes[0].ChildNodes.Add(jxsub);
jxsub = new TreeNode("管理学院", "管理学院", "~/image/Aqua12.jpg", "guanli.aspx", "blank");
TreeView1.Nodes[0].ChildNodes.Add(jxsub);
jxsub = new TreeNode("内经", "内经", "~/image/gHard17.jpg", "neijing.aspx", "self");
TreeView1.Nodes[0].ChildNodes[0].ChildNodes.Add(jxsub);
    }
}
