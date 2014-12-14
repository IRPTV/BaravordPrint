<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintShenasname.aspx.cs" Inherits="BaravordWeb.PrintShenasname" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <style type="text/css">
        .auto-style1
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; page-break-after: always;">
            <tr style="height: 50px;">
                <td style="text-align: center;">
                    <img src="IMAGES/43.JPG" style="height: 50px; width: 64px;" /></td>
            </tr>
            <tr style="height: 90px;">
                <td style="text-align: center;">
                    <asp:Label ID="Label56" Font-Size="20pt" runat="server" CssClass="LblParameters" Text="((هنر عبارت است از دمیدن روح تعهد در انسانها))"></asp:Label>
                    <%--                    <br />
                    <asp:Label  ID="Label58" runat="server"  CssClass="LblParameters" Text="امام خمینی -ره"></asp:Label>--%>
                </td>
            </tr>
            <tr style="height: 70px;">
                <td style="text-align: center;">
                    <asp:Image Height="100" ID="Image2" runat="server" />
                </td>
            </tr>
            <tr style="height: 30px;">
                <td style="text-align: center;">
                    <center>
                    <asp:Label ID="LblChannelTitle" runat="server" Font-Names="B Titr" Font-Size="14pt" Dir="Rtl" Text="تست L"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr style="height: 150px; text-align: center;">
                <td style="font-size: 25pt; vertical-align: bottom; text-align: center;" class="LblParametersTitle">Documentry or Program Proposal</td>
            </tr>
            <tr style="height: 350px;">
                <td style="font-size: 30pt; vertical-align: top; text-align: center;" class="LblParametersTitle">شناسنامه طرح تولید برنامه یا مستند</td>
            </tr>
            <tr>
                <td style="text-align: center; vertical-align: middle">
                    <table align="center">
                        <tr>
                            <td style="text-align: right;">
                                <asp:Label ID="Label51" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text="..."></asp:Label>
                            </td>
                            <td style="width: 150px; text-align: right;">
                                <asp:Label ID="Label48" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text=":عنوان برنامه"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label57" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text="..."></asp:Label>
                            </td>
                            <td style="text-align: right">
                                <asp:Label ID="Label49" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text=":تهیه کننده"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label53" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text="..."></asp:Label>
                            </td>
                            <td style="text-align: right;">
                                <asp:Label ID="Label50" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text=":تاریخ"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label55" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text="..."></asp:Label>
                            </td>
                            <td style="text-align: right; width: 150px;">
                                <asp:Label ID="Label54" runat="server" Font-Size="13pt" CssClass="LblParametersTitle" Text=":شماره"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">

            <tr>
                <td>
                    <table style="width: 100%;">
                        <tr>
                            <td colspan="3">
                                <table style="width: 100%; border: solid 1px black; border-radius: 5px;">
                                    <tr>
                                        <td style="width: 250px">
                                            <asp:Image ID="Image1" runat="server" />
                                        </td>
                                        <td>
                                            <center>
                                <img  src="IMAGES/43.JPG" style="height:50px;width:64px;" /> 
                                </center>
                                        </td>

                                        <td style="text-align: right; width: 200px;">
                                            <table dir="rtl" style="width: 100%;">
                                                <tr>
                                                    <td>
                                                        <asp:Label dir="rtl" ID="Label43" runat="server" CssClass="LblParametersTitle" Text=":شماره برآورد"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label dir="rtl" ID="Label42" runat="server" CssClass="TitleHeaderTd" Text=":عنوان طرح" Width="110px"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label dir="rtl" ID="Label47" runat="server" CssClass="LblParametersTitle" Text=":تاریخ برآورد"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label dir="rtl" ID="Label46" runat="server" CssClass="TitleHeaderTd" Text=":عنوان طرح" Width="110px"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">مشخصات طرح</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table style="width: 100%; border: solid 1px black; border-radius: 5px;">
                                    <tr>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label125" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 80px; text-align: right;">
                                            <asp:Label ID="Label123" runat="server" CssClass="LblParametersTitle" Text=":عنوان مخاطب"></asp:Label>
                                        </td>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label23" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 90px; text-align: right;">
                                            <asp:Label ID="Label122" runat="server" CssClass="LblParametersTitle" Text=":عنوان"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label31" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 80px; text-align: right;">
                                            <asp:Label ID="Label6" runat="server" CssClass="LblParametersTitle" Text=":موضوع"></asp:Label>
                                        </td>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label133" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 90px; text-align: right;">
                                            <asp:Label ID="Label132" runat="server" CssClass="LblParametersTitle" Text=":هدف"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label127" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 80px; text-align: right;">
                                            <asp:Label ID="Label126" runat="server" CssClass="LblParametersTitle" Text=":تهیه کننده"></asp:Label>
                                        </td>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label33" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 90px; text-align: right;">
                                            <asp:Label ID="Label8" runat="server" CssClass="LblParametersTitle" Text=":کارگردان"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label129" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 80px; text-align: right;">
                                            <asp:Label ID="Label128" runat="server" CssClass="LblParametersTitle" Text=":زبان برنامه"></asp:Label>
                                        </td>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label130" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 90px; text-align: right;">
                                            <asp:Label ID="Label131" runat="server" CssClass="LblParametersTitle" Text=":نویسنده"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label29" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 80px; text-align: right;">
                                            <asp:Label ID="Label5" runat="server" CssClass="LblParametersTitle" Text=":ساختار"></asp:Label>
                                        </td>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label26" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 90px; text-align: right;">
                                            <asp:Label ID="Label118" runat="server" CssClass="LblParametersTitle" Text=":مدت هر قسمت"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label34" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 80px; text-align: right;">
                                            <asp:Label ID="Label7" runat="server" CssClass="LblParametersTitle" Text=":طبقه"></asp:Label>
                                        </td>
                                        <td style="width: 330px;">
                                            <asp:Label ID="Label25" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 90px; text-align: right;">
                                            <asp:Label ID="Label4" runat="server" CssClass="LblParametersTitle" Text=":تعداد"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">نوع ساخت</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="float: right; text-align: right;">
                                            <asp:Label ID="Label64" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 60px; text-align: left;">
                                            <asp:Label ID="Label65" runat="server" CssClass="LblParametersTitle" Text=":زبان برنامه"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:Label ID="Label66" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="width: 50px; text-align: left;">
                                            <asp:Label ID="Label67" runat="server" CssClass="LblParametersTitle" Text=":زنده"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label88" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="text-align: left; width: 50px;">
                                            <asp:Label ID="Label89" runat="server" CssClass="LblParametersTitle" Text=":تامین"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label78" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="text-align: left; width: 50px;">
                                            <asp:Label ID="Label79" runat="server" CssClass="LblParametersTitle" Text=":تولید"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">شرح مالکیت اثر- نحوه و درصد مشارکت</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label16" runat="server" CssClass="LblValues" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">خلاصه ، ضرورت و اهمیت طرح</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label90" runat="server" CssClass="LblValues" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">خلاصه قسمت های برنامه</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Width="100%">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table border="0" style="width: 100%;">
                                                    <tr>
                                                        <td style="text-align: right">
                                                            <asp:Label ID="Label23" runat="server" CssClass="LblParametersTitle" Text='<%# Eval("Title") %>'></asp:Label>
                                                        </td>
                                                        <td style="width: 50px; text-align: right; vertical-align: top;">
                                                            <asp:Label ID="Label13" runat="server" CssClass="TitleHeaderTd" Text='<%# Eval("SessionNum","( {0} )") %>' Width="50"></asp:Label>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">
                                                            <asp:Label ID="Label24" runat="server" CssClass="LblValues" Text='<%# Eval("Description_Content") %>'></asp:Label>
                                                        </td>
                                                        <td style="text-align: right; width: 50px;">
                                                            <asp:Label ID="Label2" runat="server" CssClass="LblParameters" Text=":محتوا"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">
                                                            <asp:Label ID="Label25" runat="server" CssClass="LblValues" Text='<%# Eval("Description_Structure") %>'></asp:Label>
                                                        </td>
                                                        <td style="text-align: right; width: 50px;">
                                                            <asp:Label ID="Label3" runat="server" CssClass="LblParameters" Text=":ساختار"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">مخاطبین طرح</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label91" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="TitleHeaderTd">مرحله فعلی طرح</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label92" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="TitleHeaderTd" colspan="3">مدت زمان تصویربرداری به تفکیک لوکیشن</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label19" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right">
                                <asp:Label ID="Label93" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right">
                                <asp:Label ID="Label94" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 100%;">
                        <tr>
                            <td class="TitleHeaderTd" colspan="3">اطلاعات طرح در خارج از ایران</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="border: solid 1px black; border-radius: 5px;">
                                <asp:Panel ID="OutIranPnl" runat="server">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label105" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px">
                                                <asp:Label ID="Label134" runat="server" CssClass="LblParametersTitle" Text=":آشنایی به زبان مقصد"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label106" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px">
                                                <asp:Label ID="Label96" runat="server" CssClass="LblParametersTitle" Text=":دفتر فیلمسازی در مقصد"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label103" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="width: 90px; text-align: left;">
                                                <asp:Label ID="Label95" runat="server" CssClass="LblParametersTitle" Text=":ویزاهای لازم را"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label108" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px">
                                                <asp:Label ID="Label136" runat="server" CssClass="LblParametersTitle" Text=":امکان اخذ مجوز خبرنگاری"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label107" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px">
                                                <asp:Label ID="Label100" runat="server" CssClass="LblParametersTitle" Text=":امکان پشتیبانی در مقصد"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label104" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="width: 90px; text-align: left;">
                                                <asp:Label ID="Label98" runat="server" CssClass="LblParametersTitle" Text=":امکان اخذ ویزا را"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label110" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px">
                                                <asp:Label ID="Label144" runat="server" CssClass="LblParametersTitle" Text=":تلفن"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label114" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px">
                                                <asp:Label ID="Label140" runat="server" CssClass="LblParametersTitle" Text=":تلفن همراه"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label117" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="width: 90px; text-align: left;">
                                                <asp:Label ID="Label138" runat="server" CssClass="LblParametersTitle" Text=":تاریخ اعتبار ویزا"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="vertical-align: top; text-align: right">
                                                <asp:Label ID="Label109" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 150px; vertical-align: top;">
                                                <asp:Label ID="Label146" runat="server" CssClass="LblParametersTitle" Text=":نشانی گروه در خارج"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label113" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                            </td>
                                            <td style="width: 90px; text-align: left;">
                                                <asp:Label ID="Label111" runat="server" CssClass="LblParametersTitle" Text=":فکس"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 100%;">
                        <tr>
                            <td class="TitleHeaderTd" colspan="3">لیست نفرات و عوامل</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label18" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                        </tr>
                    </table>

                    <table style="width: 100%;">
                        <tr>
                            <td class="TitleHeaderTd" colspan="3">مشخصات&nbsp; تهیه کننده - پیشنهاد دهنده طرح</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table style="width: 100%; border: solid 1px black; border-radius: 5px;">
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label14" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label9" runat="server" CssClass="LblParametersTitle" Text=": نام پدر"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label12" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label1" runat="server" CssClass="LblParametersTitle" Text=": نام"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label148" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label147" runat="server" CssClass="LblParametersTitle" Text=": نام خانوادگی"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label22" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label27" runat="server" CssClass="LblParametersTitle" Text=":ملیت"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label28" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label30" runat="server" CssClass="LblParametersTitle" Text=":محل تولد"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label15" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label10" runat="server" CssClass="LblParametersTitle" Text=":تاریخ تولد"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label40" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label41" runat="server" CssClass="LblParametersTitle" Text=":رشته تحصیلی"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label11" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label17" runat="server" CssClass="LblParametersTitle" Text=": کد ملی"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label20" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label21" runat="server" CssClass="LblParametersTitle" Text=":ش. شناسنامه"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label32" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label35" runat="server" CssClass="LblParametersTitle" Text=":کارمند حوزه"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label36" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label37" runat="server" CssClass="LblParametersTitle" Text=": شغل"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label38" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label39" runat="server" CssClass="LblParametersTitle" Text=":میزان تحصیلات"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label52" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label58" runat="server" CssClass="LblParametersTitle" Text=": تلفن منزل"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label59" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label60" runat="server" CssClass="LblParametersTitle" Text=":تلفن همراه"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label61" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label62" runat="server" CssClass="LblParametersTitle" Text=":عنوان شغلی"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right" colspan="3">
                                            <asp:Label ID="Label150" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label149" runat="server" CssClass="LblParametersTitle" Text=":آدرس منزل"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label44" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label45" runat="server" CssClass="LblParametersTitle" Text=": فکس منزل"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label69" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label70" runat="server" CssClass="LblParametersTitle" Text=":حوزه فعالیت"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label71" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label72" runat="server" CssClass="LblParametersTitle" Text=": نام شرکت"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label73" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label74" runat="server" CssClass="LblParametersTitle" Text=":ایمیل شخصی"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label63" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label68" runat="server" CssClass="LblParametersTitle" Text=":تلفن شرکت"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label81" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 75px">
                                            <asp:Label ID="Label82" runat="server" CssClass="LblParametersTitle" Text=": ایمیل شرکت"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right">
                                            <asp:Label ID="Label83" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label84" runat="server" CssClass="LblParametersTitle" Text=": فکس شرکت"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: right; width: 75px;" colspan="5">
                                            <asp:Label ID="Label85" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                        </td>
                                        <td style="vertical-align: top; text-align: right; width: 85px">
                                            <asp:Label ID="Label86" runat="server" CssClass="LblParametersTitle" Text=": آدرس شرکت"></asp:Label>
                                        </td>
                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="TitleHeaderTd" colspan="3">سوابق موجود در سامانه</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView Width="100%" dir="RTL" ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="شماره برآورد">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" dir="Ltr" Text='<%# Eval("Baravord_Number") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="80px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="عنوان برنامه">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# Eval("Title_Farsi") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="موضوع">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# Subject(Eval("ID")) %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="100px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="ساختار">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# Struct(Eval("ID")) %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="70px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="قسمت">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# Eval("Session") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="30px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="زمان">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# Eval("session_Time") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="60px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="طبقه">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# Level(Eval("ID")) %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="40px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="تاریخ مصوبه">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl1" Text='<%# DateConversion.GD2JD(DateTime.Parse(Eval("ACT_DATETIME").ToString())) %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="70px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="شبکه">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" Width="70px" ImageUrl='<%# Channel(int.Parse(Eval("ID").ToString())) %>' />
                                            </ItemTemplate>
                                            <HeaderStyle Width="72px" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Font-Names="B Titr" Font-Size="9pt" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="TitleHeaderTd" colspan="3">اهم تجارب اعلام شده</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView Width="100%" dir="RTL" ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="عنوان برنامه">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl3" Text='<%# Eval("title") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="200px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="موضوع">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl4" Text='<%# Eval("subject") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="100px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="ساختار">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl5" Text='<%# Eval("structure") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="100px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="سمت">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl5" Text='<%# Eval("Role") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="قسمت">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl6" Text='<%# Eval("Session") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="30px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="زمان">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl7" Text='<%# Eval("session_Time") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="60px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="طبقه">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl8" Text='<%# Eval("Level") %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="60px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="تاریخ تولید">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl9" Text='<%# DateConversion.GD2JD(DateTime.Parse(Eval("build_DATETIME").ToString())) %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="80px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="تاریخ پخش">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl9" Text='<%# DateConversion.GD2JD(DateTime.Parse(Eval("play_DATETIME").ToString())) %>' CssClass="Providers" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="80px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="شبکه">
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl8" Text='<%# Eval("Channels") %>' CssClass="Providers" runat="server" />

                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
