﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Manage_LeaveWordBack : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    CommonClass ccObj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AName"] != null)
            {
                string id = Request["ID"].ToString();
                string strSql = "SELECT * FROM tb_LeaveWord WHERE ID=" + id + "";
                DataTable dsTable = dbObj.GetDataSetStr(strSql, "tbLeaveWord");
                if (dsTable != null)
                {
                    this.txtSubject.Text = dsTable.Rows[0]["Subject"].ToString();
                    this.txtUid.Text = Session["AName"].ToString();
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            
            }
           
        }


    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        string strSql = "INSERT INTO tb_Reply(UName,Content,DateTime,ReplyID,IP)";
        strSql += "VALUES('" + this.txtUid.Text + "','" + this.FreeTextBox1.Text + "','" + DateTime.Now + "'";
        strSql += ",'" + Convert.ToInt32(Request["ID"].ToString()) + "','" + Request.UserHostAddress + "')";
        SqlCommand myCmd = dbObj.GetCommandStr(strSql);
        dbObj.ExecNonQuery(myCmd);
        string strUrl = "ShowWord.aspx?ID=" + Request["ID"];
        Response.Redirect(strUrl);
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.FreeTextBox1.Text = "";
    }
   
}
