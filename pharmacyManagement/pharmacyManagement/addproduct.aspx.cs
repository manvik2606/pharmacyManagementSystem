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
	public partial class AddNewProduct
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Button3.Click += new EventHandler(this.InsertOrder);
		}

		public AddNewProduct()
			public int productname { get; set; }
			public string productid { get; set; }
			public string sellername { get; set; }
			public byte[] productimage { get; set; }
			public string productdesc { get; set; }


		void clear()
		{
			productname.Text = string.Empty;
			productid.Text = string.Empty;
			sellername.Text = string.Empty;
			productimage.ToString = string.Empty;
			productdesc.Text = string.Empty;
		}

		private void InsertOrder(object source, EventArgs e)
		{
			SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

			con.Open();

			string q1 = "insert into Products productname,productid,sellername,productimage,productdesc values (@p1,@p2,@p3,@p4,@p5,@p6)";
			SqlCommand cmd1 = new SqlCommand(q1, con);
			cmd1.Parameters.AddWithValue("@p1", productname);
			cmd1.Parameters.AddWithValue("@p2", productid);
			cmd1.Parameters.AddWithValue("@p3", sellername);
			cmd1.Parameters.AddWithValue("@p4", productimage);
			cmd1.Parameters.AddWithValue("@p5", productdesc);
			cmd1.Parameters.AddWithValue("@p6", sellername);
			cmd1.ExecuteNonQuery();
			SqlDataSource1.Insert();
			con.Close();
			ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Orders Info Registered');", true);


		}
	}
}