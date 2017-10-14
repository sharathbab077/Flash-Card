using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services;
namespace flashcard
{
    public partial class page1 : System.Web.UI.Page
    {
        // string[] wordlist = new string[] { };
        //string[] grammerlist = new string[] { };
        //string[] descriptionlist = new string[] { };
        List<String> wordlist = new List<String>();
        List<String> grammerlist = new List<String>();
        List<String> descriptionlist = new List<String>();
        int countup;

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();
            cmd.CommandText = "select count(*) from dbo.card";
            SqlCommand myCommand = new SqlCommand("select count(*) from dbo.card", con);
            int count = (int)myCommand.ExecuteScalar();
            countup = (int)myCommand.ExecuteScalar();
            int totalcards = count;
            count = count * 10;
            HiddenField1.Value = count.ToString() + "%";
            HiddenField1.Value = count.ToString();
            HiddenField2.Value = totalcards.ToString();


            //cmd.CommandText
            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");

            //  reader.Dispose();






            con.Close();


        }

        public String CallFromJS()
        {
            string tid = "111";

            return tid;
        }


        // public String funcclicke1(String wordid)
        public void funcclicke1()
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();
            //String clk = wordid;
            SqlCommand myCommand = new SqlCommand("UPDATE dbo.card SET visited=1 where word='" + l.Text + "'", con);

            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");
            con.Close();
            // throw new NotImplementedException();
            //return "done";
        }
        //public void funcclicke1()
        //{


        //}



        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("newcard.aspx");


        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("delcard.aspx");


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int countff;

            int temp = countup;

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();

            SqlCommand myCommand = new SqlCommand("select word,grammer,description from dbo.card", con);
            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");

            //  reader.Dispose();

            SqlDataReader drr2;


            drr2 = myCommand.ExecuteReader();



            while (drr2.Read())
            {
                wordlist.Add(drr2["word"].ToString());
                grammerlist.Add(drr2["grammer"].ToString());
                descriptionlist.Add(drr2["description"].ToString());
            }




            con.Close();

            /************************************************************************************************/

            int numOfRowsInDb = temp;

            double rowcount = Math.Ceiling((double)numOfRowsInDb / 3);
            int i = 0;


            for (int r = 0; r < rowcount; r++)
            {

                TableRow tableRow = new TableRow();
                int ccount;
                if (numOfRowsInDb > 2) { ccount = 3; numOfRowsInDb = numOfRowsInDb - 3; }
                else { ccount = numOfRowsInDb; }
                for (int c = 0; c < ccount; c++)
                {
                    //for each db record create new div
                    String wordid = wordlist[i];
                    System.Web.UI.HtmlControls.HtmlGenericControl div1 =
                                       new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div1.Attributes.Add("class", "container");
                    div1.Attributes.Add("style", "width:100%");
                    //div1.Attributes.Add("onclick", "funcclicke('" + wordid + "');");

                    div1.Attributes.Add("onClick", "funcclicke2('" + wordlist[i] + "')");

                    // Label3.Attributes.Add("onclick()", funcclicke(wordid));
                    /*****div2*****/
                    System.Web.UI.HtmlControls.HtmlGenericControl div2 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div2.Attributes.Add("style", "width:100%");
                    // div2.Attributes.Add("class", "col-xs-5");
                    //div2.Attributes.Add("class", "col-md-push-4");
                    System.Web.UI.HtmlControls.HtmlGenericControl div3 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div3.Attributes.Add("class", "flip");
                    System.Web.UI.HtmlControls.HtmlGenericControl div4 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div3.Attributes.Add("style", "width:100%");
                    div4.Attributes.Add("class", "card");
                    div4.Attributes.Add("style", "width:100%");
                    //   div4.Attributes.Add("onclick", "funcclicke('"+wordid+"');");//javascript call
                    /*div4.Attributes.Add("onclick", "funcclicke('" + wordid + "');")*/
                    ;//javascript call
                     //changing
                    //System.Web.UI.HtmlControls.HtmlGenericControl divmid =
                    //new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    //divmid.Attributes.Add("class", "card-block");
                    //changing
                   // div4.Controls.Add(divmid);
                    System.Web.UI.HtmlControls.HtmlGenericControl div5 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div5.Attributes.Add("class", "face front");
                    div5.Attributes.Add("style", "width:100%");
                    System.Web.UI.HtmlControls.HtmlGenericControl div6 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div6.Attributes.Add("class", "well well-sm inner");
                    div6.Attributes.Add("style", "width:100%");
                    Label Label1 = new Label();

                    Label1.Text = wordlist[i];
                    System.Web.UI.HtmlControls.HtmlGenericControl br1 =
                   new System.Web.UI.HtmlControls.HtmlGenericControl("BR");
                    Label Label2 = new Label();
                    Label2.Text = "(" + grammerlist[i] + ")";

                    div6.Controls.Add(Label1);
                    div6.Controls.Add(br1);

                    div6.Controls.Add(Label2);/////add l1 and l2 to div6
                    System.Web.UI.HtmlControls.HtmlGenericControl divimg1 =
                   new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div6.Controls.Add(divimg1);
                    div5.Controls.Add(div6);
                    div4.Controls.Add(div5);
                    System.Web.UI.HtmlControls.HtmlGenericControl div7 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div7.Attributes.Add("class", "face back");
                    div7.Attributes.Add("style", "width:100%");
                    System.Web.UI.HtmlControls.HtmlGenericControl div8 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div8.Attributes.Add("class", "well well-sm inner");
                    div8.Attributes.Add("style", "width:100%");
                    //div8.Attributes.Add("class", "dpinfo");
                    Label Label3 = new Label();
                    Label3.Text = wordlist[i];

                    // Label3.Attributes.Add("onclick()", funcclicke(wordid));
                    System.Web.UI.HtmlControls.HtmlGenericControl br2 =
                  new System.Web.UI.HtmlControls.HtmlGenericControl("BR");
                    Label Label4 = new Label();
                    Label4.Text = "(" + grammerlist[i] + ")";
                    Label Label5 = new Label();
                    Label5.Text = descriptionlist[i];





                    System.Web.UI.HtmlControls.HtmlGenericControl hr =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("HR");
                    /////addd l3 l4 l5 to div 8
                    div8.Controls.Add(Label3);
                    div8.Controls.Add(br2);
                    div8.Controls.Add(Label4);
                    div8.Controls.Add(hr);
                    div8.Controls.Add(Label5);
                    System.Web.UI.HtmlControls.HtmlGenericControl divimg2 =
                  new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    divimg2.Attributes.Add("class", "innericon");
                    div8.Controls.Add(divimg2);
                    //add div 8 to div7

                    div4.Controls.Add(div7);
                    div7.Controls.Add(div8);
                    div3.Controls.Add(div4);
                    div2.Controls.Add(div3);
                    div1.Controls.Add(div2);
                    TableCell cell = new TableCell();

                    //cell.Attributes.Add("style", "float:left");

                    cell.Controls.Add(div1);

                    // cell.Attributes.Add("padding","50px");
                    //Add the cell to the current row.

                    tableRow.Cells.Add(cell);

                    Table1.Rows.Add(tableRow);

                    i++;
                }
            }


        }



        public int updateporgressbarval()
        {


            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();
            //String clk = wordid;
            SqlCommand myCommand = new SqlCommand("UPDATE dbo.card SET visited=1 ", con);

            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");
            con.Close();

            return 0;

        }

        public void checklastcard()
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = @" Data Source=SHARATH\SQLEXPRESS;Initial Catalog=flashcard;Integrated Security=True";
            con.Open();
            //cmd.CommandText = "select count(*) from dbo.card";
            SqlCommand myCommand = new SqlCommand("select count(*) from dbo.card", con);
            var countf = (int)myCommand.ExecuteScalar();
            int temp = countf;

            myCommand.Connection = con;
            sda.SelectCommand = myCommand;
            sda.Fill(ds, "dbo.card");
            con.Close();

        }
    }

}


