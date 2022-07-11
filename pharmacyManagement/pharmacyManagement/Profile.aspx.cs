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

namespace pharmacyManagement
{
    public partial class Profile
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += new EventHandler(this.Button1_Click1);
            Button2.Click += new EventHandler(this.Button2_Click1);
            Button3.Click += new EventHandler(this.Button3_Click1);
        }

        private void CallData()
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            con.Open();



            string q = "select * from PInfo where mobno=@p1";
            SqlCommand cmd2 = new SqlCommand(q, con);
            cmd2.Parameters.AddWithValue("@p1", mobno.Value);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd2);
            DataTable dt1 = new DataTable();
            sda.Fill(dt1);
            if (dt1.Rows.Count > 0)

            {
                PId.Text = dt1.Rows[0]["PId"].ToString();
                email.Text = dt1.Rows[0]["email"].ToString();
                password.Text = dt1.Rows[0]["password"].ToString();
                mobno.Text = dt1.Rows[0]["mobno"].ToString();

                GridView1.DataSource = dt1;
                GridView1.DataBind();
                callAllrecord();
            }

            else

            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('No Record Found');", true);


            }


        }

        private void callClear()
        {
            PId.Text = " ";
            email.Text = " ";
            password.Text = " ";
            mobno.Text = " ";
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            con.Open();


            string q1 = "update PInfo set PId=@p1,email=@p2,password=@p3 where mobno=@p4";
            SqlCommand cmd1 = new SqlCommand(q1, con);
            cmd1.Parameters.AddWithValue("@p1", PId.Text);
            cmd1.Parameters.AddWithValue("@p2", email.Text);
            cmd1.Parameters.AddWithValue("@p3", password.Text);
            cmd1.Parameters.AddWithValue("@p4", mobno.Text);

            cmd1.ExecuteNonQuery();
            con.Close();
            callClear();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Data Updated');", true);

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            con.Open();
            if (mobno != NULL)
            {
                cmd = new SqlCommand("delete * from PInfo where mobno=@mobno", con);
                cmd.Parameters.AddWithValue("@mobno",mobno);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Record Deleted Successfully');", true);
                Button2_Click1();
                callClear();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Record to Delete');", true); 
            }
            con.close;
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            con.Open();

            string q = "select * from PInfo ";
            SqlCommand cmd = new SqlCommand(q, con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)

            {

                GridView2.DataSource = dt;
                GridView2.DataBind();

            }
        }

        private void callAllrecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            con.Open();

            string q = "select * from PInfo ";
            SqlCommand cmd = new SqlCommand(q, con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)

            {

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            GridView1_SelectedIndexChanged();
        }

        private void callAllrecord1()
        {


        }
    }
}