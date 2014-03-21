using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Text.RegularExpressions;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using AjaxControlToolkit;

public partial class _ShowGanan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Company C = new Company();
        //if (Session["tmp"] == null)
        //{
        //    תציג את הנוכחי....
        //    did i need the if sentance?
        //}

        //else 
        //{
        //   C = (Company)Session["tmp"];
           
        //}

        DataTable dt = C.readDataDB();//קוראים ממסד הנתונים db

        ShowData(dt);

        }

    ///-----------------הצגת המידע ממסד הנתונים על ידי שימוש בפקד של טבלה-------------------------------------------/

    private void ShowData(DataTable dt)
    {
        Table tbl_ = ShowTable(dt);
        tablePH_Descrip.Controls.Add(tbl_);
    }
       
    ///-------------------------creata table--------------------------------------------------------/
    public Table ShowTable(DataTable dt)
    {

        Table tbl = new Table();

        // build the header row
        TableRow trH = new TableRow();

        foreach (DataColumn dc in dt.Columns)
        {
            AddCells(trH, dc.ColumnName);
            trH.BackColor = System.Drawing.Color.Yellow;
            tbl.Rows.Add(trH);
        }

        foreach (DataRow row in dt.Rows)
        {
            TableRow tr = new TableRow();
            foreach (DataColumn dc in dt.Columns)
            {
                AddCells(tr, row[dc.ColumnName].ToString());
            }
            tbl.Rows.Add(tr);
        }
        return tbl;
    }

    //---------------------------------------------------------------------------------------
    // Add Cells to a  DataRow
    //---------------------------------------------------------------------------------------
    void AddCells(TableRow tr, string text)
    {

        TableCell tc = new TableCell();
        tc.Text = text;
        tr.Cells.Add(tc);

    }




    //----------------DataSet_Aya----------------------------
    //string CS = ConfigurationManager.ConnectionStrings["DBconnectionString"].ConnectionString; //stamShemConfi זה השם שהגדרנו בקובץ של הווב קונפיג. וכרגע אין לנו אותו.CS זה שם שאני בחרתי...
    //using (SqlConnection con = new SqlConnection(CS))//con זה סתם שם שאני הגדרתי לקישור
    //{
    //    SqlDataAdapter da = new SqlDataAdapter("shem_proc-הפקודה של sql", con);//shem_proc זה השם שניתן בדטהבייס לפעולה..da זה שם שנתתי לאוביקט DataAdapter.
    //da.SelectCommand.CommandType = CommandType.StoredProcedure;//הגדרת סוג הפקודת sql.

    //DataSet ds = new DataSet();//יצירת אוביקט חדש של דטה סט
    //da.Fill(ds);//מילוי הדטה סט ע"י הדטה אדפטר.

    //איך מעבירים את הדטה אבל לא לתוך גריד ויו??



        //if (!IsPostBack)
        //{//----------------Rating_Test--------------------------------------

            // Make up a fake ItemId and fake Values from a ViewState property.
            //  ContentRating1.ItemId = Guid.NewGuid();
            //  ContentRating1.DataSource = Values;
            //  ContentRating1.DataBind();
            // }
            //}


            //     protected void ContentRating1_Rating(object sender, Spaanjaars.Toolkit.RateEventArgs e)
            //     {
            //        if (e.HasRated)
            //        {
            //          e.Cancel = true;
            //        }
            //      }

            //     protected void ContentRating1_Rated(object sender, Spaanjaars.Toolkit.RateEventArgs e)
            //     {
            //        int[] tempValues;
            //        tempValues = Values;

            //        tempValues[Convert.ToInt32(e.RateValue) - 1] += 1;

            //        Values = tempValues;
            //        ContentRating1.DataSource = Values;
            //        ContentRating1.DataBind();
            //     }


            //     public int[] Values
            //     {
            //      get
            //     {
            //        object values = ViewState["Values"];
            //        if (values != null)
            //        {
            //          return (int[])values;
            //        }
            //        else
            //        {
            //          return new int[] { 2, 0, 0, 5, 5 };
            //        }
            //     }
            //      set
            //     {
            //        ViewState["Values"] = value;
            //     }
            //------------End Of Rating-----------------------------------------------------//


            //ImageCompany.ImageUrl = "http://goaskella.com/wp-content/uploads/2011/09/missing.jpeg";


            //Company c = new Company();


            //LabelCompanyName.Text = c.CompanyName;




        }
   
