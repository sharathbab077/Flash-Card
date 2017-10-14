using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace flashcard
{
    public partial class index : System.Web.UI.Page
    {
        int countf, countvisted;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();
            //cmd.CommandText = "select count(*) from dbo.card";
            SqlCommand myCommand = new SqlCommand("select count(*) from dbo.card", con);
            countf = (int)myCommand.ExecuteScalar();
            int temp = countf;
            countf = countf * 15;            
            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");
            Label1.Text = countf.ToString();
            Label2.Text = countf.ToString();
            Label3.Text = countf.ToString();
            Label4.Text = countf.ToString();


            
            




            con.Close();


            SqlCommand cmd1 = new SqlCommand();
            SqlConnection con1 = new SqlConnection();
            SqlDataAdapter sda1 = new SqlDataAdapter();
            DataSet ds1 = new DataSet();
            con1.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con1.Open();
            SqlCommand myCommand1 = new SqlCommand("select count(*) from dbo.card where visited='" + 1 + "'", con1);
            
            countvisted = (int)myCommand1.ExecuteScalar();


            myCommand1.Connection = con1;
            sda1.SelectCommand = myCommand1;
            sda1.Fill(ds1, "dbo.card");
            if (temp ==countvisted)
            {
                eye1.ImageUrl = "~/images/icon.png";
            }
            else
            {
                //return 0;
            }
            con1.Close();




        }
        public int gettime()
        {
            return countf;
        }

        public int checkvisited()
        {
            //int countvisted;
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();
            SqlCommand myCommand2 = new SqlCommand("select count(*) from dbo.card", con);
            countf = (int)myCommand2.ExecuteScalar();
            myCommand2.Connection = con;
            sda.SelectCommand = myCommand2;
            sda.Fill(ds, "dbo.card");
            SqlCommand myCommand = new SqlCommand("select count(*) from dbo.card where visited='" + 1 + "'", con);
            //SqlCommand myCommand = new SqlCommand("select count(*) from dbo.card where visited='"+1+'", con);
            countvisted = (int)myCommand.ExecuteScalar();
            

            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");
            if (countf == countvisted)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            con.Close();


            
        }

    }
}