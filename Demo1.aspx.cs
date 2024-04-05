using Crudeoperation.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crudeoperation
{
    public partial class Demo1 : System.Web.UI.Page
    {

        ClsUser user = new ClsUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllData();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Random rd=new Random(); 
            string Password=rd.Next(111111,999999).ToString();
            int Result = user.InsertUpdateUser(textname.Text.Trim(), txtMobile.Text.Trim(), txtEmail.Text.Trim(), txtaddress.Text.Trim(), ddlcountry.SelectedItem.Text, ChSubject.SelectedItem.Text, Rdgender.SelectedItem.Text, Password,"Insert") ;
            if(Result>0)
            {
                Response.Write("<script>alert('Data Inserted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data Not Inserted')</script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Random rd = new Random();
            string Password = rd.Next(111111, 999999).ToString();
            int Result = user.InsertUpdateUser(textname.Text.Trim(), txtMobile.Text.Trim(), txtEmail.Text.Trim(), txtaddress.Text.Trim(), ddlcountry.SelectedItem.Text, ChSubject.SelectedItem.Text, Rdgender.SelectedItem.Text, Password, "Update");
            if (Result > 0)
            {
                Response.Write("<script>alert('Data Updated')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data Not Updated')</script>");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            DataTable dt = user.GetDat(txtNo.Text.Trim(), "GetByMobileNo");
            if(dt!=null && dt.Rows.Count>0)
            {
                textname.Text = dt.Rows[0]["Name"].ToString();
                txtMobile.Text = dt.Rows[0]["MobileNo"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                txtaddress.Text = dt.Rows[0]["Address"].ToString();
               
                ddlcountry.SelectedItem.Text = dt.Rows[0]["Country"].ToString();
                //ChSubject.SelectedItem.Text = dt.Rows[0]["Subject"].ToString();
                //Rdgender.SelectedItem.Text = dt.Rows[0]["Gender"].ToString();
            }
        }
        public void GetAllData()
        {
            DataTable dt= user.GetDat("", "");
            gridview1.DataSource = dt;
            gridview1.DataBind();
        }
    }
}