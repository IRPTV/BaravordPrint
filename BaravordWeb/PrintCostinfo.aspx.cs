using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaravordWeb.MyDBTableAdapters;

namespace BaravordWeb
{
    public partial class PrintCostinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int Program_Id = 0;
                Program_Id = int.Parse(Request.QueryString["Program_Id"].ToString());
                BaravordTableAdapter Br_Ta = new BaravordTableAdapter();
                MyDB.BaravordDataTable Br_Dt = Br_Ta.Select_Program_ById(Program_Id);                
                if (Br_Dt[0]["dep"].ToString() == "1")
                {
                    MyDB.BaravordDataTable Br_Dt2 = Br_Ta.Select_Program_ByBackId(Program_Id);
                    if (Br_Dt2.Rows.Count == 1)
                    {
                        if (bool.Parse(Br_Dt2[0]["IsCheckedOut"].ToString()) == true)
                        {
                            Br_Dt = Br_Ta.Select_Program_ById(int.Parse(Br_Dt2[0]["Id"].ToString()));
                            Program_Id = int.Parse(Br_Dt2[0]["Id"].ToString());
                        }
                        else
                        {
                            Response.Write("این برآورد هنوز در واحد اطلاعات و برنامه ریزی نهایی نشده است");
                            return;
                        }
                    }
                    else
                    {
                        Response.Write("این برآورد هنوز به  واحد اطلاعات و برنامه ریزی ارسال نشده است");
                        return;
                    }

                }
              


                //Label42.Text = GenerateBaravordCode(
                //    DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_Datetime"].ToString())),
                //    int.Parse(Br_Dt[0]["ChannelId"].ToString())) + Br_Dt[0]["Baravord_Number"].ToString();

                Label42.Text =  Br_Dt[0]["Baravord_Number"].ToString();

                MyDB.BaravordDataTable Ch_Dt = Br_Ta.Select_Current_Channel(int.Parse(Br_Dt[0]["ChannelId"].ToString()));



                Image1.ImageUrl = "../images/" + Br_Ta.Select_Channel_Logo(Program_Id)[0]["logourl"].ToString() + ".JPG";
                Label59.Text = Ch_Dt[0]["Title"].ToString();
                Label46.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Publish"].ToString()));
                Label48007.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Act_DateTime"].ToString()));
                Label48008.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Finance"].ToString()));
                Label14.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Edit"].ToString()));

                if (DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Edit"].ToString())).Trim() == DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Publish"].ToString())).Trim())
                {
                    Label13.Visible = false;
                    Label14.Visible = false;
                }
                if (DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Finance"].ToString())).Trim() == DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Publish"].ToString())).Trim())
                {

                    Label48008.Text = "";
                 }



                switch (Br_Dt[0]["Program_Kind"].ToString())
                {
                    case "1":
                        Label48012.Text = "زنده";
                        break;
                    case "2":
                        Label48012.Text = "تولیدی";
                        break;
                    case "3":
                        Label48012.Text = "زنده - تولیدی";
                        break;
                    default:
                        Label48012.Text = "----";
                        break;
                }

                switch (Br_Dt[0]["Checkout_Kind"].ToString())
                {
                    case "1":
                        Label48013.Text = "دقیقه ای";
                        break;
                    case "2":
                        Label48013.Text = "کدی";
                        break;
                    case "3":
                        Label48013.Text = "گلوبال";
                        break;
                    default:
                        Label48013.Text = "----";
                        break;
                }



                ProvidersTableAdapter P_Ta = new ProvidersTableAdapter();

                try
                {
                    Label48015.Text = P_Ta.Select_Current_DepTitle(int.Parse(Br_Dt[0]["Depart"].ToString()))[0]["Title"].ToString();
                }
                catch
                {

                    Label48015.Text = "-----";
                }
                



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
                Label51.Text = "";
                for (int i = 0; i < Target_Dt.Rows.Count; i++)
                {
                    Label51.Text += Target_Dt[i]["title"].ToString() + "، ";
                }



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
                    Label31.Text += Subject_Dt[j]["title"].ToString() + "، ";
                }


                Label34.Text = "";
                MyDB.BaravordDataTable Level_Dt = Br_Ta.Select_Program_Level(Program_Id);
                for (int j = 0; j < Level_Dt.Rows.Count; j++)
                {
                    Label34.Text += Level_Dt[j]["title"].ToString() + "، ";
                }

                Label23.Text = Br_Dt[0]["Title_farsi"].ToString();

                Label25.Text = Br_Dt[0]["Session"].ToString();
                Label26.Text = Br_Dt[0]["session_Time"].ToString();

                if (Br_Dt[0]["Percent_Live"].ToString() == "0")
                {
                    Label27.Text = "";
                }
                else
                {
                    Label27.Text = Br_Dt[0]["Percent_Live"].ToString() + " درصد";
                }

                if (Br_Dt[0]["Percent_ARCHIVE"].ToString() == "0")
                {
                    Label28.Text = "";
                }
                else
                {
                    Label28.Text = Br_Dt[0]["Percent_ARCHIVE"].ToString() + " درصد";
                }

                if (Br_Dt[0]["Percent_new"].ToString() == "0")
                {
                    Label30.Text = "";
                }
                else
                {
                    Label30.Text = Br_Dt[0]["Percent_new"].ToString() + " درصد";
                }

                if (Br_Dt[0]["Percent_dubbed"].ToString() == "0")
                {
                    Label32.Text = "";
                }
                else
                {
                    Label32.Text = Br_Dt[0]["Percent_dubbed"].ToString() + " درصد";
                }

           


                Label33.Text = Br_Dt[0]["Director_Name"].ToString();
                Label48017.Text = Br_Dt[0]["Writer_Name"].ToString();


                Label48020.Text = Br_Dt[0]["tarhNumber"].ToString();
                Label48021.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["Datetime_Tarh"].ToString()));



                LblMolaheze3.Text = " <img src='IMAGES/bullet.png' style='vertical-align: middle;' />"
                    + Br_Dt[0]["Notify"].ToString().Trim().Replace("\n", "<br/><img src='IMAGES/bullet.png' style='vertical-align: middle;' />");



                MyDB.BaravordDataTable Notify_Dt = Br_Ta.Select_Program_Notify(Program_Id, 1);
                GridView1.DataSource = Notify_Dt;
                GridView1.DataBind();

                MyDB.BaravordDataTable Notify_Dt2 = Br_Ta.Select_Program_Notify(Program_Id, 2);
                GridView2.DataSource = Notify_Dt2;
                GridView2.DataBind();

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
                    Label51.Text = Label51.Text.Remove(Label51.Text.Length - 2, 2);
                    Label29.Text = Label29.Text.Remove(Label29.Text.Length - 2, 2);
                    Label31.Text = Label31.Text.Remove(Label31.Text.Length - 2, 2);
                    Label34.Text = Label34.Text.Remove(Label34.Text.Length - 2, 2);
                }
                catch
                {

                }






                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("ChannelId", Br_Dt[0]["ChannelId"].ToString());
                SqlDataSource1.SelectParameters.Add("Page", "Cost");
                SqlDataSource1.DataBind();








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
                    RetValue = "تهیه کننده: " + "<Br/>" + Provider_Dt[0]["NAME"].ToString() + " " + Provider_Dt[0]["LASTNAME"].ToString();
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
            Label54.Text = "       هزینه تولید هر دقیقه :   " + string.Format("{0:n3}", (((Total) / (int.Parse(Br_Dt[0]["Session"].ToString()) * Second)) * 60)).Replace(".000", "") + " ریال ";



        }
        protected string Spliter(object Value)
        {
            if (Value.ToString() != "*")
            {
                return string.Format("{0:n3}", double.Parse(Value.ToString())).Replace(".000", "").Trim();
            }
            else
            {
                return "*";
            }
        }
    }
}
