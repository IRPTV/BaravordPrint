using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaravordWeb.MyDBTableAdapters;

namespace BaravordWeb
{
    public partial class PrintProgram : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Program_Id = 0;
            Program_Id=  int.Parse(Request.QueryString["Program_Id"].ToString());
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);


            if (Br_Dt[0]["IsCheckedOut"].ToString().ToLower() != "true")
            {
                Label42.Visible = false;
                Label43.Visible = false;
                Label46.Visible = false;
                Label47.Visible = false;
            }


            if (Br_Dt[0]["Baravord_Number"].ToString().Trim().Length > 1)
            {
                //Label42.Text = GenerateBaravordCode(
                //    DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString())),
                //    int.Parse(Br_Dt[0]["ChannelId"].ToString())) + Br_Dt[0]["Baravord_Number"].ToString();
                Label42.Text = Br_Dt[0]["Baravord_Number"].ToString();
            }
            else
            {
                Label42.Text = "          ";
            }

            Image1.ImageUrl = "../images/" + Br_Ta.Select_Channel_Logo(Program_Id)[0]["logourl"].ToString()+ ".JPG";

            Label46.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["DateTime_Publish"].ToString()));

            
            Label29.Text = "";
            MyDB.BaravordDataTable Struct_Dt = Br_Ta.Select_Program_Structure(Program_Id);
            for (int i = 0; i < Struct_Dt.Rows.Count; i++)
            {
                Label29.Text += Struct_Dt[i]["title"].ToString() + "، ";
            }            

            Label31.Text = "";
            MyDB.BaravordDataTable Subject_Dt = Br_Ta.Select_Program_Subjects(Program_Id);
            for (int j = 0; j < Subject_Dt.Rows.Count; j++)
            {
                Label31.Text += Subject_Dt[j]["title"].ToString()+ "، ";
            }
            try
            {
                Label31.Text = Label31.Text.Remove(Label31.Text.Length - 2, 2);
                Label29.Text = Label29.Text.Remove(Label29.Text.Length - 2, 2);
            }
            catch
            {

            }


            Label34.Text = "";
            MyDB.BaravordDataTable Level_Dt = Br_Ta.Select_Program_Level(Program_Id);
            for (int j = 0; j < Level_Dt.Rows.Count; j++)
            {
                Label34.Text += Level_Dt[j]["title"].ToString() + "، ";
            }

            try
            {
                Label34.Text = Label34.Text.Remove(Label34.Text.Length - 2, 2);              
            }
            catch
            {

            }

            Label23.Text = Br_Dt[0]["Title_farsi"].ToString();

            MyDB.BaravordDataTable Provider_Dt2 =
              Br_Ta.Select_Current_Provider(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));

            Label24.Text = Provider_Dt2[0]["NAME"].ToString() + " " + Provider_Dt2[0]["LASTNAME"].ToString();
          
            Label25.Text = Br_Dt[0]["Session"].ToString();
            Label26.Text = Br_Dt[0]["session_Time"].ToString();

            Label27.Text = Br_Dt[0]["Percent_Live"].ToString()+" درصد";
            Label28.Text = Br_Dt[0]["Percent_ARCHIVE"].ToString() + " درصد";
            Label30.Text = Br_Dt[0]["Percent_new"].ToString() + " درصد";
            Label32.Text = Br_Dt[0]["Percent_dubbed"].ToString() + " درصد";


            Label33.Text = Br_Dt[0]["Director_Name"].ToString();


            Label49.Text = Br_Dt[0]["TarhNumber"].ToString();

              MyDB.BaravordDataTable Provider_Dt=
                Br_Ta.Select_Current_Provider(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));
              if (Provider_Dt.Rows.Count > 0)
              {
                  Label24.Text = Provider_Dt[0]["NAME"].ToString() + " " + Provider_Dt[0]["LASTNAME"].ToString();
              }




              switch (Br_Dt[0]["VisaByProvider"].ToString())
              {
                  case "2": Label38.Text = "به عهده شبکه";
                      break;
                  case "1": Label38.Text = "به عهده تهیه کننده";
                      break;
                  case "3": Label38.Text = "-----";
                      break;
                  default:
                      break;
              }



              Label55.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["DateTime_Tarh"].ToString()));

             // Label38.Text = Br_Dt[0]["VisaByProvider"].ToString();

           
            if (!bool.Parse(Br_Dt[0]["ArchiveBuy"].ToString()))
            {
                Label35.Text = "ندارد";
            }
            else
            {
                Label35.Text = "دارد";
            }

            if (Br_Dt[0]["Music"].ToString()=="1")
            {
                Label37.Text = "خرید رایت";
            }

            if (Br_Dt[0]["Music"].ToString() == "2")
            {
                Label37.Text = "تولیدی";
            }

            Label41.Text = Br_Dt[0]["Latest_Delivery"].ToString()+" روز ";
            Label40.Text = string.Format("{0:n3}", double.Parse(Br_Dt[0]["Price_Minute"].ToString())).Replace(".000", "") + " ریال ";



            MyDB.BaravordDataTable Notify_Dt = Br_Ta.Select_Program_Notify(Program_Id, 1);
            GridView1.DataSource = Notify_Dt;
            GridView1.DataBind();

            MyDB.BaravordDataTable Notify_Dt2 = Br_Ta.Select_Program_Notify(Program_Id, 2);
            //DataRow Rw=new DataRow ();
            //Rw[0]=
            //Notify_Dt2.Rows.Add(
            GridView2.DataSource = Notify_Dt2;
            GridView2.DataBind();


            LblMolaheze3.Text =" <img src='IMAGES/bullet.png' style='vertical-align: middle;' />"
                + Br_Dt[0]["Notify"].ToString().Trim().Replace("\n", "<br/><img src='IMAGES/bullet.png' style='vertical-align: middle;' />");

            MyDB.BaravordDataTable Role_Dt = Br_Ta.Select_Count_Programe_Role(Program_Id);
            Label18.Text = "";

            for (int i = 0; i < Role_Dt.Rows.Count; i++)
            {
                Label18.Text += Role_Dt.Rows[i]["title"]+"("+Role_Dt.Rows[i]["countvalue"]+")، ";
            }
            try
            {
                Label18.Text = Label18.Text.Remove(Label18.Text.Length - 2, 2);               
            }
            catch
            {

            }




            MyDB.BaravordDataTable Location_Dt = Br_Ta.Select_Program_Location(Program_Id);
            Label19.Text = "";
               Label51.Text = "<b>شهر ها و کشورهای تولید برنامه:<b/>   ";
            for (int i = 0; i < Location_Dt.Rows.Count; i++)
            {
                Label19.Text += Location_Dt.Rows[i]["title"] + "(" + Location_Dt.Rows[i]["duration"] + " روز)، ";
                Label51.Text += Location_Dt.Rows[i]["title"] + "، ";
            }
            try
            {
                Label19.Text = Label19.Text.Remove(Label19.Text.Length - 2, 2);
                Label51.Text = Label51.Text.Remove(Label51.Text.Length - 2, 2);
            }
            catch
            {

            }


            MyDB.BaravordDataTable Payment_Dt = Br_Ta.Select_Program_Payments(Program_Id);

            Label44.Text += " طی " + Payment_Dt.Rows.Count.ToString() + " قسط ";
            for (int i = 0; i < Payment_Dt.Rows.Count; i++)
            {
                Label45.Text += "("+(i+1).ToString()+") "+ Payment_Dt[i]["title"].ToString() + "، ";
            }

            try
            {
                Label45.Text = Label45.Text.Remove(Label45.Text.Length - 2, 2);
            }
            catch
            {              
               
            }
         

            MyDB.BaravordDataTable Right_Dt = Br_Ta.Select_Program_CopyRight(Program_Id);

           // Label44.Text += " طی " + Payment_Dt.Rows.Count.ToString() + " قسط ";
            for (int i = 0; i < Right_Dt.Rows.Count; i++)
            {
                if (Right_Dt[i]["value"].ToString() == "100")
                {
                    Label16.Text += "کلیه حقوق برنامه متعلق به  " + Right_Dt[i]["title"].ToString()  +" میباشد. ";
                }
                else
                {
                    Label16.Text += (i + 1).ToString() + "- " + Right_Dt[i]["title"].ToString() + " ( " + Right_Dt[i]["value"].ToString() + " %)، ";

                }
            }




            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("ChannelId", Br_Dt[0]["ChannelId"].ToString());
            SqlDataSource1.SelectParameters.Add("Page", "Shora");
            SqlDataSource1.DataBind();

        }
        //public static string GenerateBaravordCode(string Year, int ChannelCode)
        //{
        //    string ChannelString = Calculation.ChannelCode(ChannelCode);
        //    return "2/" + Year.Substring(2, 2) + "/" + ChannelString + "/";
        //}
        protected string DepTitle(object RoleID)
        {
            string RetValue = "";

            if (RoleID.ToString() != "0")
            {
                if (RoleID.ToString() != "-1")
                {
                    ProvidersTableAdapter Ta = new ProvidersTableAdapter();
                    MyDB.ProvidersDataTable Dt = Ta.Select_Current_DepTitle(int.Parse(RoleID.ToString()));
                    RetValue = Dt[0]["Title"].ToString();
                }
                else
                {
                    int Program_Id = 0;
                    Program_Id = int.Parse(Request.QueryString["Program_Id"].ToString());
                    BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
                    MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);

                    ProvidersTableAdapter Ta = new ProvidersTableAdapter();
                    MyDB.ProvidersDataTable Dt = Ta.Select_Current_DepTitle(int.Parse(Br_Dt[0]["Depart"].ToString()));
                    RetValue = Dt[0]["Title"].ToString();
                }


            }
            else
            {
                int Program_Id = 0;
                Program_Id = int.Parse(Request.QueryString["Program_Id"].ToString());
                BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
                MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);

                MyDB.BaravordDataTable Provider_Dt =
               Br_Ta.Select_Current_Provider(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));
                if (Provider_Dt.Rows.Count > 0)
                {
                    RetValue = "تهیه کننده: " + "<Br/>" + Provider_Dt[0]["NAME"].ToString() + " " + Provider_Dt[0]["LASTNAME"].ToString();
                }
            }
            return RetValue;
        }
    }
}