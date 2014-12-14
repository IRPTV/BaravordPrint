using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaravordWeb.MyDBTableAdapters;

namespace BaravordWeb
{
    public partial class PrintProvider : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            

            MyDB.BaravordDataTable Provider_Dt =
               Br_Ta.Select_Current_Provider(int.Parse(Request.QueryString["Provider_Id"].ToString()));
            if (Provider_Dt.Rows.Count > 0)
            {                
                Label148.Text = Provider_Dt[0]["LASTNAME"].ToString();
                Label12.Text = Provider_Dt[0]["NAME"].ToString();
                Label14.Text = Provider_Dt[0]["FATHER_NAME"].ToString();
                Label15.Text = Provider_Dt[0]["BIRTHDATE"].ToString();
                Label28.Text = Provider_Dt[0]["BIRTHPLACE"].ToString();
                Label22.Text = Provider_Dt[0]["NATIONALITY"].ToString();
                Label20.Text = Provider_Dt[0]["SHENASNAME"].ToString();
                Label11.Text = Provider_Dt[0]["MELLICODE"].ToString();
                Label40.Text = Provider_Dt[0]["STYDUCOURCE"].ToString();
                Label38.Text = Provider_Dt[0]["STUDYLEVEL"].ToString();
                Label36.Text = Provider_Dt[0]["JOB"].ToString();
                Label32.Text = Provider_Dt[0]["IRIBEMPLOEE"].ToString();
                Label61.Text = Provider_Dt[0]["JOBTITLE"].ToString();
                Label150.Text = Provider_Dt[0]["HOMEADDRESS"].ToString();
                Label59.Text = Provider_Dt[0]["PERSONALMOBILE"].ToString();
                Label52.Text = Provider_Dt[0]["PERSONALTELL"].ToString();
                Label44.Text = Provider_Dt[0]["PERSONALFAX"].ToString();
                Label73.Text = Provider_Dt[0]["PERSONALEMAIL"].ToString();
                Label71.Text = Provider_Dt[0]["COMPANY"].ToString();
                Label69.Text = Provider_Dt[0]["COMPANYAREA"].ToString();
                Label85.Text = Provider_Dt[0]["COMPANYADDRESS"].ToString();
                Label63.Text = Provider_Dt[0]["COMPANYTELL"].ToString();
                Label83.Text = Provider_Dt[0]["COMPANYFAX"].ToString();
                Label81.Text = Provider_Dt[0]["COMPANYEMAIL"].ToString();

            }

            MyDB.BaravordDataTable Prov_Programs_Dt =
                                   Br_Ta.Select_Provider_Programs(int.Parse(Request.QueryString["Provider_Id"].ToString()));

            GridView2.DataSource = Prov_Programs_Dt;
            GridView2.DataBind();

            //ProvidersTableAdapter Prov_Ta = new ProvidersTableAdapter();
            //MyDB.ProvidersDataTable Prov_Programs_History_Dt =
            //                        Prov_Ta.Select_Provider_His(int.Parse(Request.QueryString["Provider_Id"].ToString()));
            //GridView3.DataSource = Prov_Programs_History_Dt;
            //GridView3.DataBind();
        }
        protected string Struct(object Program_Id)
        {
            string LblStr = "";
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            MyDB.BaravordDataTable Struct_Dt = Br_Ta.Select_Program_Structure(int.Parse(Program_Id.ToString()));
            for (int i = 0; i < Struct_Dt.Rows.Count; i++)
            {
                LblStr += Struct_Dt[i]["title"].ToString() + "،";
            }
            return LblStr;
        }



        protected string Subject(object Program_Id)
        {
            string LblStr = "";
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            MyDB.BaravordDataTable Subject_Dt = Br_Ta.Select_Program_Subjects(int.Parse(Program_Id.ToString()));
            for (int j = 0; j < Subject_Dt.Rows.Count; j++)
            {
                LblStr += Subject_Dt[j]["title"].ToString() + "،";
            }
            return LblStr;
        }

        protected string Level(object Program_Id)
        {
            string LblStr = "";
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();

            MyDB.BaravordDataTable Level_Dt = Br_Ta.Select_Program_Level(int.Parse(Program_Id.ToString()));
            for (int j = 0; j < Level_Dt.Rows.Count; j++)
            {
                LblStr += Level_Dt[j]["title"].ToString() + "،";
            }
            return LblStr;
        }
        protected string Channel(int Program_Id)
        {
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            return "../images/" + Br_Ta.Select_Channel_Logo(Program_Id)[0]["logourl"].ToString() + ".JPG";
        }


        public static string GenerateBaravordCode(string Year, int ChannelCode)
        {
            string ChannelString = Calculation.ChannelCode(ChannelCode);
            return "2/" + Year.Substring(2, 2) + "/" + ChannelString + "/";
        }
    }
}
