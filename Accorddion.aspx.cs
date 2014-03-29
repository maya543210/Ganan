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

public partial class _Accorddion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        //Company C = new Company();
        //if (Session["tmp"] == null)
        //{
        //    תציג את הנוכחי....
        //    did i need the if sentance?
        //}

        //else 
        //{
        //   C = (Company)Session["tmp"];

        //}

        Company C = new Company();
        DataTable dt = new DataTable();
        DBservicesA DBs = new DBservicesA();
        DBs = C.readCompanyDB_Area();

        dt = DBs.dt;

        /*---------------------לולאה עבור איזורי שירות-----------------------------------------*/
        //List<string> listArea = new List<string>();
        //foreach (DataRow row in dt.Rows)
        //{
        //    listArea.Add(row.ItemArray[0].ToString());
        //}

        

        DataSet ds = C.readCompanyDB(); // read from the DataBase
        //DataSet ds_Area = C.readCompanyDB_Area();//read for service area, from DB

        DataRow dr = ds.Tables["dbo.Company"].Rows[0];
        //DataRow dr_Area = dt.Tables["dbo.companyServiceArea"].Rows[0];//יצירת שורה עבור איזור שירות
        //LabelCompanyName.Text = dr["companyName"].ToString();
        
        HtmlGenericControl p_Descr = new HtmlGenericControl("P");
        p_Descr.InnerText = dr["companyDescs"].ToString();
        Label_Descr.Controls.Add(p_Descr);

        HtmlGenericControl p_Address = new HtmlGenericControl("P");//יצירת פסקה לכתובת 
        p_Address.InnerText = dr["companyAddress" ].ToString();//הכנסת התוכן מהדטה בייס לתוך הפסקה
        p_Address.InnerText += " "; 
        p_Address.InnerText  += dr["companyCity"].ToString();
        PH_Address.Controls.Add(p_Address);//השמת הפסקה שיצרנו בתוך הדף הקדמי 

        HtmlGenericControl p_Area = new HtmlGenericControl("P");//יצירת פסקה חדשה
        //p_Area.InnerText = dr_Area["companyServiceAreaName"].ToString();//השמה
        //DataTable dt = C.readComp();
        //לשנות את הקוד האחורי....
        //List<string> listArea = new List<string>();
        foreach (DataRow row in dt.Rows)
        {
            p_Area.InnerText = p_Area.InnerText + row.ItemArray[3].ToString() + " , ";
           
           
        }
        Label_SrvArea.Controls.Add(p_Area);

        //Label_Address.Text = dr["companyAddress"].ToString() + " , " + dr["companyCity"].ToString();
        //Label_SrvArea.Text = dr["companyArch"].ToString();//בבעיה- איך להמיר את המספר של הערך בטבלה לאיזור שירות
        //ImageCompany.ImageUrl = null;
        //ImageCompany.ImageUrl = dr["companyLogoUrl"].ToString();
        //Lable_Opnion.Text = dr["companyDescs"].ToString();

        //DataTable dt = C.readComp();

       




        /*--------------------------rating-opinions-tabs----------------------------------------*/

        HtmlGenericControl ul_Tabs = new HtmlGenericControl("ol");
        DataTable dt_Opin = new DataTable();
        dt_Opin = C.readCompanyDBRate();

        foreach (DataRow row in dt_Opin.Rows) 
        {
            HtmlGenericControl li_rate = new HtmlGenericControl("li");
            li_rate.InnerText = row.ItemArray[7].ToString();
            ul_Tabs.Controls.Add(li_rate);
        }

        Label_Opinion.Controls.Add(ul_Tabs);












        ShowData(dt);//????

    }


    // Show the Data Table using an asp table

    private void ShowData(DataTable dt)
    {
        Table tbl_ = ShowTable(dt);
        //tablePH_Descrip.Controls.Add(tbl_);
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

