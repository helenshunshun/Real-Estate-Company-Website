using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Role : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList用户.DataSource = Membership.GetAllUsers();
            ListBox所有角色.DataSource = Roles.GetAllRoles();
            DataBind();
        }
    }
    protected void Button创建新角色_Click(object sender, EventArgs e)
    {
        Roles.CreateRole(TextBox新角色.Text);
        ListBox所有角色.DataSource = Roles.GetAllRoles();
        ListBox所有角色.DataBind();

    }
    protected void DropDownList用户名_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox用户所属角色.DataSource = Roles.GetRolesForUser(DropDownList用户.Text);
        ListBox用户所属角色.DataBind();
    }
    protected void 将用户从该角色中删除_Click(object sender, EventArgs e)
    {
        Roles.RemoveUserFromRole(DropDownList用户.Text, ListBox用户所属角色.Text);
        ListBox用户所属角色.DataSource = Roles.GetRolesForUser(DropDownList用户.Text);
        ListBox用户所属角色.DataBind();

    }
    protected void Button为用户添加新角色_Click(object sender, EventArgs e)
    {
        Roles.AddUserToRole(DropDownList用户.Text, ListBox所有角色.Text);
         ListBox用户所属角色.DataSource = Roles.GetRolesForUser(DropDownList用户.Text);
        ListBox用户所属角色.DataBind();
        ListBox所有角色.DataSource = Roles.GetAllRoles();
        ListBox所有角色.DataBind();
       
    }
    protected void Button删除选中的角色_Click(object sender, EventArgs e)
    {

        if (Roles.GetUsersInRole(ListBox所有角色.Text).Count<string>()==0)
        {
            Roles.DeleteRole(ListBox所有角色.Text);
            ListBox所有角色.DataSource = Roles.GetAllRoles();
            ListBox所有角色.DataBind();
        }
        else
            Response.Write("该角色有用户,无法删除");

    }
    protected void ListBox所有角色_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox角色中的用户.DataSource = Roles.GetUsersInRole(ListBox所有角色.Text);
        ListBox角色中的用户.DataBind();
    }
}
