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
	public partial class AddNewOrder
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Button3.Click += new EventHandler(this.InsertOrder);
		}

		public AddNewOrder()
			public int orderid { get; set; }
			public string username { get; set; }
			public string datemodified { get; set; }
			public string status { get; set; }
			public string productname { get; set; }
			public string sellername { get; set; }


		void clear()
		{
			orderid.Text = string.Empty;
			username.Text = string.Empty;
			datemodified.Text = string.Empty;
			status.Text = string.Empty;
			productname.Text = string.Empty;
			sellername.Text = string.Empty;
			orderid.Focus();
		}

		private void InsertOrder(object source, EventArgs e)
		{
				SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

				con.Open();

				string q1 = "INSERT INTO Orders (orderid,username,datemodified,status,productname,sellername) values (@p1,@p2,@p3,@p4,@p5,@p6)";
				SqlCommand cmd1 = new SqlCommand(q1, con);
				cmd1.Parameters.AddWithValue("@p1", orderid);
				cmd1.Parameters.AddWithValue("@p2", username);
				cmd1.Parameters.AddWithValue("@p3", datemodified);
				cmd1.Parameters.AddWithValue("@p4", status);
				cmd1.Parameters.AddWithValue("@p5", productname);
				cmd1.Parameters.AddWithValue("@p6", sellername);
				cmd1.ExecuteNonQuery();
				SqlDataSource1.Insert();
				ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Orders Info Registered');", true);

				con.Close();
				
			
		}
	}
}