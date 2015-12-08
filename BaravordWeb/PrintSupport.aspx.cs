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
    public partial class PrintSupport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int Support_Id = 0;
                Support_Id = int.Parse(Request.QueryString["Id"].ToString());
                SUPPORTTableAdapter Br_Ta = new SUPPORTTableAdapter();
                MyDB.SUPPORTDataTable Br_Dt = Br_Ta.Support_Select_ById(Support_Id);


                Label42.Text = Br_Dt[0]["BARAVORD_NUMBER"].ToString();

                BaravordTableAdapter Br_Ta2 = new BaravordTableAdapter();
                MyDB.BaravordDataTable Ch_Dt = Br_Ta2.Select_Current_Channel(int.Parse(Br_Dt[0]["CHANNEL_ID"].ToString()));

                if (Br_Dt[0]["Title"].ToString().ToString().Trim().Length > 1)
                {

                    Label23.Text = Br_Dt[0]["Title"].ToString();
                }
                else
                {
                    Label23.Text = Ch_Dt[0]["Title"].ToString() + " - " + DepTitle(Br_Dt[0]["DEP_ID"]);
                }

                Label24.Text = DepTitle(Br_Dt[0]["DEP_ID"]);
                if (Br_Dt[0]["DEP_ID"].ToString() == "38")
                    pnlSign.Visible = true;

                Image1.ImageUrl = "../images/" + Br_Ta2.Select_Current_Channel(int.Parse(Br_Dt[0]["CHANNEL_ID"].ToString()))[0]["logourl"].ToString() + ".JPG";
                Label59.Text = Ch_Dt[0]["Title"].ToString();
                Label46.Text = DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["DATETIME_PUBLISH"].ToString()));
                if (Br_Dt[0]["DATETIME_EDIT"].ToString().Length > 3)
                {
                    if (Br_Dt[0]["DATETIME_EDIT"].ToString().Trim() == DateConversion.GD2JD(DateTime.Parse(Br_Dt[0]["DATETIME_PUBLISH"].ToString())).Trim())
                    {
                        Label13.Visible = false;
                        Label14.Visible = false;
                    }
                    else
                    {
                        Label14.Text = Br_Dt[0]["DATETIME_EDIT"].ToString();
                    }
                }
                else
                {
                    //Label14.Text = "--/--/----";
                    Label13.Visible = false;
                    Label14.Visible = false;
                }



                LblMolaheze3.Text = " <img src='IMAGES/bullet.png' style='vertical-align: middle;' />"
                    + Br_Dt[0]["DESCPRIPTION"].ToString().Trim().Replace("\n", "<br/><img src='IMAGES/bullet.png' style='vertical-align: middle;' />");


                MyDB.SUPPORTDataTable Role_Dt = Br_Ta.Support_Detail_Select_By_Bid(Support_Id);


                //DataRow dr = Role_Dt.NewRow();
                //dr["ID"] = 1;
                //dr["ROLE_ID"] = 1;
                //dr["UNIT"] = 6;
                //dr["COUNT"] = 0;
                //dr["PRICE_UNIT"] = 6;
                //dr["SHIFT"] = 8;
                //dr["MONTH"] = 8;
                //dr["DESCPRIPTION"] = Role_Dt.Rows.Count;
                ////   dr["SORT"] = Role_Dt.Rows.Count;              
                //Role_Dt.Rows.InsertAt(dr, Role_Dt.Rows.Count);


                GridView3.DataSource = Role_Dt;
                GridView3.DataBind();

               
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("ChannelId", Br_Dt[0]["CHANNEL_ID"].ToString());
                SqlDataSource1.SelectParameters.Add("Page", "Support");
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
                    int Support_Id = 0;
                    Support_Id = int.Parse(Request.QueryString["Id"].ToString());
                    SUPPORTTableAdapter Br_Ta = new SUPPORTTableAdapter();
                    MyDB.SUPPORTDataTable Br_Dt = Br_Ta.Support_Select_ById(Support_Id);

                    ProvidersTableAdapter Ta = new ProvidersTableAdapter();
                    MyDB.ProvidersDataTable Dt = Ta.Select_Current_DepTitle(int.Parse(Br_Dt[0]["DEP_ID"].ToString()));
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

        public static string RowCostSupport(int Unit, float Number, double PriceUnit, float Shift, float Month)
        {
            return Calculation.RowCostSupport(Unit, Number, PriceUnit, Shift, Month);
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
                //   RetVal = (double.Parse(Price.ToString().Trim()) * double.Parse(Count.ToString().Trim()) * double.Parse(Label25.Text.Trim())).ToString();

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

                case 7:
                    RetStr = "نفر ماه";
                    break;

                case 8:
                    RetStr = "کار";
                    break;
                case 9:
                    RetStr = "ساعت";
                    break;
                case 10:
                    RetStr = "مقاله";
                    break;
                case 11:
                    RetStr = "صفحه";
                    break;





                default:
                    break;

            }
            return RetStr;
        }


        protected string RoleTitle(object RoleId)
        {
            try
            {
                BaravordTableAdapter Br = new BaravordTableAdapter();
                return Br.Select_Current_Role(int.Parse(RoleId.ToString()))[0]["Title"].ToString();

            }
            catch
            {

                return "------";
            }

        }

        protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Attributes.Add("style", "page-break-after: auto;");
        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {












            //GridViewRow Rw = new GridViewRow(GridView3.Rows.Count - 1, 0, DataControlRowType.EmptyDataRow, DataControlRowState.Selected);
            //GridView3.





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
                string Value = ((Label)GridView3.Rows[i].FindControl("Label4899")).Text;


                try
                {
                    Total += double.Parse(Value.Replace(",", ""));
                }
                catch
                {

                }
            }

            Label61.Text = string.Format("{0:n3}", Total).Replace(".000", "");


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


        }
    }
}