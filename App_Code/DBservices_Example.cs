using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Text;

/// <summary>
/// Summary description for DBservices
/// </summary>
public class DBservices_Example
{
    public SqlDataAdapter da;
    public DataTable dt;

    public DBservices_Example()
	{
		//
		// TODO: Add constructor logic here
		//
	}
//  AYA




/*
    public static List<Product> GetAllProducts1()
    {

        List<Product> listProducts1 = new List<Product>();
        string CS = WebConfigurationManager.ConnectionStrings["productsDBconnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Products", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Product product = new Product();
                product.Id = Convert.ToInt32(rdr["id"]);
                product.Name = rdr["name"].ToString();
                product.Price = Convert.ToInt32(rdr["price"]);
                product.Amount = Convert.ToInt32(rdr["amount"]);
                product.Discount = Convert.ToBoolean(rdr["discount"]);
                product.ImageUrl = rdr["ImageUrl"].ToString();
                listProducts1.Add(product);
            }
            return listProducts1;
        }
       
   
    }
*/
    // AYA END

    //--------------------------------------------------------cashier view(GV)--------------------------------------------------------

    public DataSet CashierDataSet()
    {
        Dictionary<string, int> ShoppingDic = new Dictionary<string, int>();
        if ((Dictionary<string, int>)HttpContext.Current.Session["Session_BuyerDic"] != null)
            ShoppingDic = (Dictionary<string, int>)HttpContext.Current.Session["Session_BuyerDic"];
        DataSet ds = new DataSet();
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["productsDBconnectionString"].ConnectionString))
        {
            con.Open();
            foreach (KeyValuePair<string, int> kvp in ShoppingDic)
            {
                if (kvp.Value != 0)
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products WHERE Name = '" + kvp.Key.ToString() + "'", con);
                    da.Fill(ds);
                }
            }
            if (ds.Tables.Count == 0)
            {
                DataTable dt = new DataTable();
                ds.Tables.Add(dt);
            }
            HttpContext.Current.Session["Session_CashierDS"] = ds;
            return (DataSet)HttpContext.Current.Session["Session_CashierDS"];
        }
    }

    //MAYA START

    //--------------------------------------------------------------------------------------------------
    // This method creates a connection to the database according to the connectionString name in the web.config 
    //--------------------------------------------------------------------------------------------------
    public SqlConnection connect(String conString)
    {

        // read the connection string from the configuration file
        string cStr = WebConfigurationManager.ConnectionStrings[conString].ConnectionString;
        SqlConnection con = new SqlConnection(cStr);
        con.Open();
        return con;
    }

/*
    //--------------------------------------------------------------------
    // Read from the DB into a table
    //--------------------------------------------------------------------
    public DBservices ReadFromDataBase(string conString, string tableName)
    {

        DBservices dbS = new DBservices(); // create a helper class
        SqlConnection con = null;

        try
        {
            con = dbS.connect(conString); // open the connection to the database/

            String selectStr = "SELECT * FROM " + tableName; // create the select that will be used by the adapter to select data from the DB

            SqlDataAdapter da = new SqlDataAdapter(selectStr, con); // create the data adapter

            DataSet ds = new DataSet(); // create a DataSet and give it a name (not mandatory) as defualt it will be the same name as the DB
            da.Fill(ds);                        // Fill the datatable (in the dataset), using the Select command

            DataTable dt = ds.Tables[0];

            // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
            dbS.dt = dt;
            dbS.da = da;

            return dbS;
        }
        catch (Exception ex)
        {
            // write to log
            throw ex;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }

*/

    public void updateItemsAfterPurchase()
    {
        Dictionary<string, int> ShoppingDic = new Dictionary<string, int>();
        if ((Dictionary<string, int>)HttpContext.Current.Session["Session_BuyerDic"] != null)
            ShoppingDic = (Dictionary<string, int>)HttpContext.Current.Session["Session_BuyerDic"];
        if (ShoppingDic.Count > 0)
        {
            foreach (KeyValuePair<string, int> kvp in ShoppingDic)
            {
                if (kvp.Value > 0)
                {
                    using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["productsDBconnectionString"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand getAmount = new SqlCommand();
                        getAmount.Parameters.AddWithValue("@Name_", kvp.Key);
                        getAmount.CommandText = @"SELECT Amount FROM Products WHERE Name = @Name_";
                        getAmount.Connection = con;
                        int amount = Convert.ToInt32(getAmount.ExecuteScalar());
                        SqlCommand cmd = new SqlCommand();
                        cmd.Parameters.AddWithValue("@Name_", kvp.Key);
                        cmd.Parameters.Add("@Amount_", SqlDbType.Decimal, 18).Value = Math.Max(0, amount - kvp.Value);
                        cmd.Connection = con;
                        cmd.CommandText = @"UPDATE Products SET Amount = @Amount_ WHERE Name = @Name_";
                        cmd.ExecuteNonQuery();
                    }
                }
            }

        }

    }

/*
    public void updateItemWithDiscount(string Name, double Price)
    {

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["productsDBconnectionString"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.Add("@price", SqlDbType.Decimal, 18).Value = Convert.ToDecimal(Price);
            cmd.Connection = con;
            cmd.CommandText = @"UPDATE Products SET price = @price, discount = 1 WHERE name = @name";
            cmd.ExecuteNonQuery();
        }
    }

*/

    public void updateItemWithDiscount(string Name, double Price)
    {

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["productsDBconnectionString"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.Add("@price", SqlDbType.Decimal, 18).Value = Convert.ToDecimal(Price);
            cmd.Connection = con;
            cmd.CommandText = @"UPDATE Products SET price = @price, discount = 1 WHERE name = @name";
            cmd.ExecuteNonQuery();
        }
    }



    public DataSet readBuyerDataSet()
    {

        if (HttpContext.Current.Session["Session_BuyerDS"] != null)
            return (DataSet)HttpContext.Current.Session["Session_BuyerDS"];
        else
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["productsDBconnectionString"].ConnectionString))
            {

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", con);
                da.Fill(ds);
                HttpContext.Current.Session["Session_BuyerDS"] = ds;
                return (DataSet)HttpContext.Current.Session["Session_BuyerDS"];

            }
        }
    }

    public DataSet DiscountDataSource()
    {
        if (HttpContext.Current.Session["Session_DiscountDS"] != null)
            return (DataSet)HttpContext.Current.Session["Session_DiscountDS"];
        else
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rupConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM ShopProducts", con);
                da.Fill(ds);
                HttpContext.Current.Session["Session_DiscountDS"] = ds;
                return (DataSet)HttpContext.Current.Session["Session_DiscountDS"];
            }
        }
    }
        


}