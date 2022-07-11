using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pharmacyManagement
{
    public partial class 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random r = new Random();
            PId.Value = $"P{r.Next().ToString()}";
            Button4.Click += new EventHandler(this.Button4_Click1);
            CallData();
        }


        private void CallData()
        {

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            con.Open();
            Button clickedButton = (Button)sender;
            clickedButton.Text = "....done-clicked....";
            clickedButton.Enabled = false;

            string q = "select * from PInfo where mobno=@p1";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@p1", mobno.Value);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)

            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Cannot Register ');", true);


            }

            else
            {



                string q1 = "insert into PInfo values (@p1,@p2,@p3,@p4)";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.Parameters.AddWithValue("@p1", PId.Value);
                cmd1.Parameters.AddWithValue("@p2", mobno.Value);
                cmd1.Parameters.AddWithValue("@p3", email.Value);
                cmd1.Parameters.AddWithValue("@p4", password.Value);
                cmd1.ExecuteNonQuery();
                con.Close();
                callMedicalHistory();
                callClear();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Info Registered');", true);


            }
        }





        private void callClear()
        {
            email.Value = " ";
            password.Value = " ";
            mobno.Value = " ";
        }

        private void callMedicalHistory()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            {
                con.Open();

                string q1 = "insert into PInfo (PId,mobno) values (@p1,@p2)";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.Parameters.AddWithValue("@p1", PId.Value);
                cmd1.Parameters.AddWithValue("@p2", mobno.Value);
                cmd1.ExecuteNonQuery();
                con.Close();
            }


        }
    }
}
