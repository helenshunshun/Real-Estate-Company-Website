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

public partial class pic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {       
            Menu1.Items.Add(new MenuItem("音乐"));
            Menu1.Items[0].ChildItems.Add(new MenuItem("现代"));
            Menu1.Items[0].ChildItems.Add(new MenuItem("古典"));

            Menu1.Items.Add(new MenuItem("头像"));
            Menu1.Items[1].ChildItems.Add(new MenuItem("男孩"));
            Menu1.Items[1].ChildItems.Add(new MenuItem("女孩"));
            int i ;
            for (i = 1; i <= 9; i++)
            {
                string boy="b"+ i.ToString()+".gif";
                Menu1.Items[1].ChildItems[0].ChildItems.Add(new MenuItem(boy, "~/boy/" + boy, "~/boy/" + boy));
                string girl="g"+ i.ToString()+".gif";
                Menu1.Items[1].ChildItems[1].ChildItems.Add(new MenuItem(girl, "~/girl/" + girl, "~/girl/" + girl));
           }
         }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        Image1.ImageUrl = Menu1.SelectedValue;
    }
}
