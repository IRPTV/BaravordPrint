using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaravordWeb.MyDBTableAdapters;

namespace BaravordWeb
{
    public partial class PrintShenasname : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Program_Id = 0;
            Program_Id=  int.Parse(Request.QueryString["Program_Id"].ToString());
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);


            if (Br_Dt[0]["Dep"].ToString() == "1")
            {
                Label42.Visible = false;
                Label43.Visible = false;
                Label46.Visible = false;
                Label47.Visible = false;
            }

            if (Br_Dt[0]["Baravord_Number"].ToString().Trim().Length > 1)
            {
                try
                {
                    //Label55.Text = Label42.Text = GenerateBaravordCode(
                    //DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString())),
                    //int.Parse(Br_Dt[0]["ChannelId"].ToString())) + Br_Dt[0]["Baravord_Number"].ToString();

                    Label55.Text = Label42.Text =  Br_Dt[0]["Baravord_Number"].ToString();

                

                }
                catch
                {
                    Label42.Text = "        ";
                    Label55.Text = "        ";
                }
            }
            else
            {
                Label42.Text = "        ";
                Label55.Text = "        ";
            }

           LblChannelTitle.Text=  Br_Ta.Select_Current_Channel(int.Parse(Br_Dt[0]["ChannelId"].ToString()))[0]["title"].ToString();


            Image1.ImageUrl = "../images/" + Br_Ta.Select_Channel_Logo(Program_Id)[0]["logourl"].ToString()+ ".JPG";
            Image2.ImageUrl = "../images/" + Br_Ta.Select_Channel_Logo(Program_Id)[0]["logourl"].ToString() + ".JPG";

            Label46.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString()));
            Label53.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString()));

            
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


            Label34.Text = "";
            MyDB.BaravordDataTable Level_Dt = Br_Ta.Select_Program_Level(Program_Id);
            for (int j = 0; j < Level_Dt.Rows.Count; j++)
            {
                Label34.Text += Level_Dt[j]["title"].ToString() + "، ";
            }
            Label51.Text = Br_Dt[0]["Title_farsi"].ToString();

            Label23.Text = Br_Dt[0]["Title_farsi"].ToString();
            Label125.Text = Br_Dt[0]["Title_2"].ToString();
          

            MyDB.BaravordDataTable Provider_Dt2 =
               Br_Ta.Select_Current_Provider(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));

            Label57.Text = Provider_Dt2[0]["NAME"].ToString() + " " + Provider_Dt2[0]["LASTNAME"].ToString();
            Label127.Text = Provider_Dt2[0]["NAME"].ToString() + " " + Provider_Dt2[0]["LASTNAME"].ToString();

            Label25.Text = Br_Dt[0]["Session"].ToString() +" قسمت ";
            Label26.Text = Br_Dt[0]["session_Time"].ToString();

            Label66.Text = Br_Dt[0]["Percent_Live"].ToString()+" درصد";
            Label88.Text = Br_Dt[0]["Percent_ARCHIVE"].ToString() + " درصد";
            Label78.Text = Br_Dt[0]["Percent_new"].ToString() + " درصد";
            Label64.Text = Br_Dt[0]["Percent_dubbed"].ToString() + " درصد";


            Label33.Text = Br_Dt[0]["Director_Name"].ToString();


            Label90.Text = Br_Dt[0]["Description"].ToString();

            Label91.Text = Br_Dt[0]["Viewers"].ToString();
            //Label91.Text = Br_Dt[0]["Tarhnumber"].ToString();


            Label130.Text = Br_Dt[0]["Writer_Name"].ToString();



            MyDB.BaravordDataTable Lang_Dt = Br_Ta.Select_Current_Lang(int.Parse(Br_Dt[0]["Language_Id"].ToString()));
            Label129.Text = Lang_Dt[0]["title"].ToString();


            try
            {
                Label92.Text = Br_Ta.Select_Program_Step(Program_Id)[0]["Title"].ToString();

            }
            catch (Exception exp)
            {

                Label92.Text = exp.Message;
            }

            Label93.Text = " این برنامه با مشخصات ذکر شده ، ظرف مدت " + " ( "+Br_Dt[0]["Latest_Delivery"].ToString() +
                " ) "+ "   روز از تاریخ عقد قرارداد به صورت کامل در اختیار شبکه قرار خواهد گرفت ";


            Label94.Text = " برآورد تقریبی مالی این برنامه دقیقه ای  " + " ( " +
                string.Format("{0:n3}", double.Parse(Br_Dt[0]["Price_Minute"].ToString())).Replace(".000", "") +
               " ) " + "    ریال است ";


            MyDB.BaravordDataTable Target_Dt = Br_Ta.Select_Program_Target(Program_Id);
            Label133.Text = "";
            for (int i = 0; i < Target_Dt.Rows.Count; i++)
            {
                 Label133.Text += Target_Dt[i]["title"].ToString() + "، ";
            }

            MyDB.BaravordDataTable Role_Dt = Br_Ta.Select_Count_Programe_Role(Program_Id);
            Label18.Text = "";
            for (int i = 0; i < Role_Dt.Rows.Count; i++)
            {
                Label18.Text += Role_Dt.Rows[i]["title"] + "(" + Role_Dt.Rows[i]["countvalue"] + ")  ، ";
            }

            MyDB.BaravordDataTable Session_Dt = Br_Ta.Select_Program_Sessions(Program_Id);
            GridView1.DataSource = Session_Dt;
            GridView1.DataBind();
            

         

            MyDB.BaravordDataTable Location_Dt = Br_Ta.Select_Program_Location(Program_Id);
            Label19.Text = "";
            for (int i = 0; i < Location_Dt.Rows.Count; i++)
            {
                Label19.Text += Location_Dt.Rows[i]["title"] + "(" + Location_Dt.Rows[i]["duration"] + " روز)  ، ";
            }


        
            MyDB.BaravordDataTable Right_Dt = Br_Ta.Select_Program_CopyRight(Program_Id);

         
            for (int i = 0; i < Right_Dt.Rows.Count; i++)
            {
                if (Right_Dt[i]["value"].ToString() == "100")
                {
                    Label16.Text += "کلیه حقوق برنامه متعلق به  " + Right_Dt[i]["title"].ToString() + " میباشد. ";
                }
                else
                {
                    Label16.Text += (i + 1).ToString() + "- " + Right_Dt[i]["title"].ToString() + " ( " + Right_Dt[i]["value"].ToString() + " %) ، ";

                }
            }

          //  Out of Iran
            MyDB.BaravordDataTable OIran_Dt = Br_Ta.Select_OutIran(Program_Id);
            if (OIran_Dt.Rows.Count > 0)
            {

                Label103.Text = bool.Parse(OIran_Dt[0]["Visa_IsHave"].ToString()) ? " دارم " : " ندارم ";
                Label104.Text = bool.Parse(OIran_Dt[0]["Visa_CanGet"].ToString()) ? " دارم " : " ندارم ";
                Label105.Text = bool.Parse(OIran_Dt[0]["language"].ToString()) ? " دارم " : " ندارم ";
                Label106.Text = bool.Parse(OIran_Dt[0]["office"].ToString()) ? " دارم " : " ندارم ";
                Label107.Text = bool.Parse(OIran_Dt[0]["sponser"].ToString()) ? " دارم " : " ندارم ";
                Label108.Text = bool.Parse(OIran_Dt[0]["Reporter_Credential"].ToString()) ? " دارم " : " ندارم ";



                Label117.Text = OIran_Dt[0]["Visa_Expire"].ToString();
                Label109.Text = OIran_Dt[0]["Group_Address"].ToString();

                Label110.Text = OIran_Dt[0]["Phone_Number"].ToString();
                Label113.Text = OIran_Dt[0]["Fax_Number"].ToString();
                Label114.Text = OIran_Dt[0]["CellPhone_number"].ToString();
            }
            else
            {
                OutIranPnl.Visible = false;
            }

            MyDB.BaravordDataTable Provider_Dt =
                Br_Ta.Select_Current_Provider(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));
            if (Provider_Dt.Rows.Count > 0)
            {
                Label57.Text = Provider_Dt[0]["NAME"].ToString() + " " + Provider_Dt[0]["LASTNAME"].ToString();

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
                                   Br_Ta.Select_Provider_Programs(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));

            GridView2.DataSource = Prov_Programs_Dt;
            GridView2.DataBind();


            try
            {
                ProvidersTableAdapter Prov_Ta = new ProvidersTableAdapter();
                MyDB.ProvidersDataTable Prov_Programs_History_Dt =
                                        Prov_Ta.Select_Provider_His(int.Parse(Request.QueryString["Provider_Id"].ToString()));
                GridView3.DataSource = Prov_Programs_History_Dt;
                GridView3.DataBind();
            }
            catch 
            {
                
              
            }

            //Remove ،
            try
            {
                Label31.Text = Label31.Text.Remove(Label31.Text.Length - 2, 2);
                Label29.Text = Label29.Text.Remove(Label29.Text.Length - 2, 2);
                Label133.Text = Label133.Text.Remove(Label133.Text.Length - 2, 2);
                Label34.Text = Label34.Text.Remove(Label34.Text.Length - 2, 2);
                Label19.Text = Label19.Text.Remove(Label19.Text.Length - 2, 2);
            }
            catch
            {

            }

       


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


        
       //public static string GenerateBaravordCode(string Year, int ChannelCode)
       // {
       //     string ChannelString = Calculation.ChannelCode(ChannelCode);
       //     return "2/" + Year.Substring(2, 2) + "/" + ChannelString + "/";
       // }
    }
}