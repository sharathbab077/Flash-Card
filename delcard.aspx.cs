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
    public partial class delcard : System.Web.UI.Page
    {


        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();

        }

        protected void delcards_Click(object sender, EventArgs e)
        {
            //description.Text;
            cmd.CommandText = "DELETE FROM dbo.card where word='" + delword.Text + "'";
            //cmd.CommandText = "INSERT INTO dbo.card VALUES ('" + word.Text + "','" + grammer.Text + "','" + description.Text + "')";
            //cmd.CommandText = "select * from dbo.cards where username='" + word.Text + "'and grammer='" + grammer.Text + "'";
            //Label1.Text = "select * from dbo.cards where grammer='" + TextBox1.Text + "'and word='" + TextBox2.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "dbo.card");
            con.Close();



        }
    }
}