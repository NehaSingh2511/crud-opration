using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Crudeoperation.App_Code
{
    public class ClsUser:ClsConnection
    {
        public int InsertUpdateUser(string Name,string MobileNo,string Email,string Address,string Country,string Subject,string Gender,string Password,string Action)
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand("sp_inset_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Country", Country);
                cmd.Parameters.AddWithValue("@Subject", Subject);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@Action", Action);
                con.Open();
                
                return cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception)
            {

                throw;
            }
            
        }
        public DataTable GetDat(string Mobile, string Action)
        {
            SqlConnection con= new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("Sp_SearchData", con);
            cmd.CommandType= CommandType.StoredProcedure;   
            cmd.Parameters.AddWithValue("@MobileNo", Mobile);
            cmd.Parameters.AddWithValue("@Action", Action);
            SqlDataAdapter sda=new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return dt;
            }
            else
            {
                return null;
            }
        }
    }
}