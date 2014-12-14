using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaravordWeb.MyDBTableAdapters;

namespace BaravordWeb
{
    public partial class PrintCost2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int Program_Id = 0;
                Program_Id = int.Parse(Request.QueryString["Program_Id"].ToString());
                BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
                MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);

                //Label42.Text = GenerateBaravordCode(
                //    DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString())),
                //    int.Parse(Br_Dt[0]["ChannelId"].ToString())) + Br_Dt[0]["Baravord_Number"].ToString();

                Label42.Text = Br_Dt[0]["Baravord_Number"].ToString();

                MyDB.BaravordDataTable Ch_Dt = Br_Ta.Select_Current_Channel(int.Parse(Br_Dt[0]["ChannelId"].ToString()));



                Image1.ImageUrl = "../images/" + Br_Ta.Select_Channel_Logo(Program_Id)[0]["logourl"].ToString() + ".JPG";
               // Label59.Text = Ch_Dt[0]["Title"].ToString();
                Label46.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString()));


                Label49.Text = CalculateTotalTime(Br_Dt[0]["Session"], Br_Dt[0]["Session_Time"]);




                if (Br_Dt[0]["Dep"].ToString() == "1")
                {
                    Label42.Visible = false;
                    Label43.Visible = false;
                    Label46.Visible = false;
                    Label47.Visible = false;
                }


                MyDB.BaravordDataTable Provider_Dt =
                  Br_Ta.Select_Current_Provider(int.Parse(Br_Dt[0]["Provider_Id"].ToString()));
                if (Provider_Dt.Rows.Count > 0)
                {
                    Label24.Text = Provider_Dt[0]["NAME"].ToString() + " " + Provider_Dt[0]["LASTNAME"].ToString();
                }








              


                MyDB.BaravordDataTable Target_Dt = Br_Ta.Select_Program_Target(Program_Id);
                //Label51.Text = "";
                //for (int i = 0; i < Target_Dt.Rows.Count; i++)
                //{
                //    Label51.Text += Target_Dt[i]["title"].ToString() + "، ";
                //}



                //Label29.Text = "";
                //MyDB.BaravordDataTable Struct_Dt = Br_Ta.Select_Program_Structure(Program_Id);
                //for (int i = 0; i < Struct_Dt.Rows.Count; i++)
                //{
                //    Label29.Text += Struct_Dt[i]["title"].ToString() + "، ";
                //}

                //Label31.Text = "";
                //MyDB.BaravordDataTable Subject_Dt = Br_Ta.Select_Program_Subjects(Program_Id);
                //for (int j = 0; j < Subject_Dt.Rows.Count; j++)
                //{
                //    Label31.Text += Subject_Dt[j]["title"].ToString() + "، ";
                //}


                //Label34.Text = "";
                //MyDB.BaravordDataTable Level_Dt = Br_Ta.Select_Program_Level(Program_Id);
                //for (int j = 0; j < Level_Dt.Rows.Count; j++)
                //{
                //    Label34.Text += Level_Dt[j]["title"].ToString() + "، ";
                //}

                Label23.Text = Br_Dt[0]["Title_farsi"].ToString();

                Label25.Text = Br_Dt[0]["Session"].ToString();
                Label26.Text = Br_Dt[0]["session_Time"].ToString();

                //Label27.Text = Br_Dt[0]["Percent_Live"].ToString() + " درصد";
                //Label28.Text = Br_Dt[0]["Percent_ARCHIVE"].ToString() + " درصد";
                //Label30.Text = Br_Dt[0]["Percent_new"].ToString() + " درصد";
                //Label32.Text = Br_Dt[0]["Percent_dubbed"].ToString() + " درصد";


                //Label33.Text = Br_Dt[0]["Director_Name"].ToString();


                Label48005.Text = Br_Dt[0]["Title_2"].ToString();


                MyDB.BaravordDataTable Location_Dt2 = Br_Ta.Select_Program_Location(Program_Id);

                int Count = 0;
                for (int i = 0; i < Location_Dt2.Rows.Count; i++)
                {
                    Count += int.Parse(Location_Dt2[i]["Duration"].ToString());
                }

                Label48007.Text = Count.ToString() + " روز (براساس لوکیشن ها)" ;



                Label48011.Text = Br_Dt[0]["Latest_Delivery"].ToString()+"  روز پس از عقد قرارداد ";

                MyDB.BaravordDataTable Role_Dt = Br_Ta.Select_Programe_Role(Program_Id);
                GridView3.DataSource = Role_Dt;
                GridView3.DataBind();



              //  double ValTot = 0;
             //   double Val = 0;
                //for (int i = 0; i < Role_Dt.Rows.Count; i++)
                //{
                //    ValTot += double.Parse(SetTotal(Role_Dt[i]["Price_Unit"], Role_Dt[i]["count"], Role_Dt[i]["unit"]));
                //    Val += double.Parse(Role_Dt[i]["Price_Unit"].ToString());
                //}
              //  Label52.Text = string.Format("{0:n3}", double.Parse(Val.ToString())).Replace(".000", "");
              //  Label53.Text = string.Format("{0:n3}", double.Parse(ValTot.ToString())).Replace(".000", "");

                string[] St = Br_Dt[0]["Session_Time"].ToString().Split(':');
                double Second = double.Parse(Br_Dt[0]["Session"].ToString()) * ((int.Parse(St[0]) * 3600) + (int.Parse(St[1]) * 60) + (int.Parse(St[2]) * 1));

              //  Label54.Text = "هزینه تولید هر دقیقه:" + string.Format("{0:n3}", double.Parse(((ValTot / Second) * 60).ToString())).Replace(".0000", "").Replace(".000", "") + " ریال ";







                //Edit ,

                try
                {
                    //Label51.Text = Label51.Text.Remove(Label51.Text.Length - 2, 2);
                    //Label29.Text = Label29.Text.Remove(Label29.Text.Length - 2, 2);
                    //Label31.Text = Label31.Text.Remove(Label31.Text.Length - 2, 2);
                    //Label34.Text = Label34.Text.Remove(Label34.Text.Length - 2, 2);
                }
                catch
                {

                }






                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("ChannelId", Br_Dt[0]["ChannelId"].ToString());
                SqlDataSource1.SelectParameters.Add("Page", "Cost2");
                SqlDataSource1.DataBind();


                MyDB.BaravordDataTable Location_Dt = Br_Ta.Select_Program_Location(Program_Id);
                Label48009.Text = "";
                for (int i = 0; i < Location_Dt.Rows.Count; i++)
                {

                    Label48009.Text += Location_Dt.Rows[i]["title"] + "، ";
                }
                try
                {

                    Label48009.Text = Label48009.Text.Remove(Label48009.Text.Length - 2, 2);
                }
                catch
                {

                }




            }




        }
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
                    RetValue = "تهیه کننده: "+"<Br/>"+ Provider_Dt[0]["NAME"].ToString() + " " + Provider_Dt[0]["LASTNAME"].ToString();
                }
            }
            return RetValue;
        }

        public static string RowCost(int Unit, int Number, double PriceUnit, int SessionNumber, string SessionTime, int Index)
        {
            return Calculation.RowCost(Unit, Number, PriceUnit, SessionNumber, SessionTime)[Index];
        }
        protected string SetPerProg(object Price, object Count, object Unit)
        {
            string RetVal = "";
            if (Unit.ToString() == "1")
            {
                //Per Program
                RetVal = (double.Parse(Price.ToString().Trim()) * double.Parse(Count.ToString().Trim())).ToString();

            }
            else
            {
                if (Unit.ToString() == "2")
                {
                    //For Total Program
                    RetVal = "------";

                }
            }
            return RetVal;
        }
        protected string SetTotal(object Price, object Count, object Unit)
        {
            string RetVal = "";
            if (Unit.ToString() == "1")
            {
                //Per Program
                RetVal = (double.Parse(Price.ToString().Trim()) * double.Parse(Count.ToString().Trim()) * double.Parse(Label25.Text.Trim())).ToString();

            }
            else
            {
                if (Unit.ToString() == "2")
                {
                    //For Total Program
                    RetVal = (double.Parse(Price.ToString().Trim()) * double.Parse(Count.ToString().Trim())).ToString();

                }
            }
            return RetVal;
        }

        protected string SetUnit(object Unit)
        {
            int Val = int.Parse(Unit.ToString());
            string RetStr = null;

            switch (Val)
            {
                case 1:
                    RetStr = "برنامه";
                    break;
                case 2:
                    RetStr = "درکل";
                    break;
                case 3:
                    RetStr = "دقیقه";
                    break;
                case 4:
                    RetStr = "ثانیه";
                    break;

                case 5:
                    RetStr = "جلسه";
                    break;

                case 6:
                    RetStr = "نفر روز";
                    break;

                default:
                    break;

            }
            return RetStr;
        }

        //public static string GenerateBaravordCode(string Year, int ChannelCode)
        //{
        //    string ChannelString = Calculation.ChannelCode(ChannelCode);
        //    return "2/" + Year.Substring(2, 2) + "/" + ChannelString + "/";
        //}

        protected string CalculateTotalTime(object Session, object SessionTime)
        {
            string[] St = SessionTime.ToString().Split(':');
            int Second = int.Parse(Session.ToString()) * ((int.Parse(St[0]) * 3600) + (int.Parse(St[1]) * 60) + (int.Parse(St[2]) * 1));

            return string.Format("{0:00}:{1:00}:{2:00}", Second / 3600, (Second / 60) % 60, Second % 60);
        }

        protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Attributes.Add("style", "page-break-after: auto;");
        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {
           
            double Total = 0;
          


            //Jame Arzeshe vahed
            Total = 0;
            for (int i = 0; i < GridView3.Rows.Count; i++)
            {
                string Value = ((Label)GridView3.Rows[i].FindControl("Label482")).Text;


                try
                {
                    Total += double.Parse(Value.Replace(",", ""));
                }
                catch
                {

                }
            }

            Label60.Text = string.Format("{0:n3}", Total).Replace(".000", "");







            //Tedade kols
            Total = 0;
            for (int i = 0; i < GridView3.Rows.Count; i++)
            {
                string Value = ((Label)GridView3.Rows[i].FindControl("Label483")).Text;


                try
                {
                    Total += double.Parse(Value.Replace(",", ""));
                }
                catch
                {

                }
            }

            Label61.Text = string.Format("{0:n3}", Total).Replace(".000", "");



          



            //Jame Har barname
            Total = 0;
            for (int i = 0; i < GridView3.Rows.Count; i++)
            {
                string Value = ((Label)GridView3.Rows[i].FindControl("Label481")).Text;


                try
                {
                    Total += double.Parse(Value.Replace(",", ""));
                }
                catch
                {

                }
            }

            Label53.Text = string.Format("{0:n3}", Total).Replace(".000", "");



            //Arzeshe kol
            Total = 0;
            for (int i = 0; i < GridView3.Rows.Count; i++)
            {
                string Value = ((Label)GridView3.Rows[i].FindControl("Label48")).Text;


                try
                {
                    Total += double.Parse(Value.Replace(",", ""));
                }
                catch
                {

                }
            }

            Label52.Text = string.Format("{0:n3}", Total).Replace(".000", "").Trim();
            //Har Daghighe

            int Program_Id = 0;
            Program_Id = int.Parse(Request.QueryString["Program_Id"].ToString());
            BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
            MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);


            string[] Time = Br_Dt[0]["Session_Time"].ToString().Split(':');
            double Second = int.Parse(Time[0].Trim()) * 3600 + int.Parse(Time[1].Trim()) * 60 + int.Parse(Time[2].Trim());
            Label54.Text ="       هزینه تولید هر دقیقه :   "+ string.Format("{0:n3}", (((Total) / (int.Parse(Br_Dt[0]["Session"].ToString()) * Second)) * 60)).Replace(".000", "") + " ریال "; 



        }
    }
}