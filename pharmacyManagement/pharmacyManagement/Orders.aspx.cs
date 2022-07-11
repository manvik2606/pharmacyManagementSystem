using System;
using System.Collections.Immutable;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
/// <summary>
/// Summary description for Class1
/// </summary>
/// 
namespace pharmacyManagement
{
	public partial class Orders
	{
		public Orders()
		{
			public int orderid { get; set; }
			public string username { get; set; }
			public string datemodified { get; set; }
			public string status { get; set; }
			public string productname { get; set; }
			public string sellername { get; set; }
			//
			// TODO: Add constructor logic here
			//
		}

	void clear()
	{
		orderid.Text = string.Empty; 
		username.Text = string.Empty; 
		datemodified.Text = string.Empty;
		status.Text = string.Empty;
		orderid.Focus();
	}

    void Button2_Click(object sender,EventArgs e)
    {
        Server.Transfer("addneworder.aspx");
    }

    public void BindGridView()
    {
        Try
            {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            MySqlCommand cmd = new MySqlCommand("Select * from Orders ORDER BY orderid ASC;",conn);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
        }
            catch (MySqlException ex)
        {
            ShowMessage(ex.Message);
        }
        Finally
            {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
    }
}
}