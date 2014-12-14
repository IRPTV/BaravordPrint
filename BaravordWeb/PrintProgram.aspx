<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintProgram.aspx.cs" Inherits="BaravordWeb.PrintProgram" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
   
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
    <form id="form1" runat="server">
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
                                <img  src="IMAGES/43.JPG" style="height:30px; width:44px;" /> 

                                </center>
                            </td>

                            <td style="text-align: right; width: 200px;">
                                <table dir="rtl" style="width: 100%;">
                                    <tr>
                                        <td>
                                            <asp:Label dir="rtl" ID="Label43" runat="server" CssClass="LblParametersTitle" Text=":شماره برآورد"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label dir="rtl" ID="Label42" runat="server" CssClass="TitleHeaderTd" Text=":عنوان طرح" Width="100px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label dir="rtl" ID="Label47" runat="server" CssClass="LblParametersTitle" Text=":تاریخ  صدور برآورد"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label dir="rtl" ID="Label46" runat="server" CssClass="TitleHeaderTd" Text=":عنوان طرح" Width="100px"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>

                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="TitleHeaderTd" style="-webkit-print-color-adjust: exact; background-color: #cccccc;">مــصــــوبه</td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width: 100%; border: solid 1px black; border-radius: 5px;">
                        <tr>
                            <td>
                                <asp:Label ID="Label24" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 70px; text-align: right;">
                                <asp:Label ID="Label2" runat="server" CssClass="LblParametersTitle" Text=": تهیه کننده"></asp:Label>
                            </td>
                            <td style="text-align: right">
                                <asp:Label ID="Label23" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 70px; text-align: right;">
                                <asp:Label ID="Label1" runat="server" CssClass="LblParametersTitle" Text=":عنوان طرح"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="TitleHeaderTd">شرح مصوبات طرح و برنامه</td>
            </tr>
            <tr>
                <td colspan="3" style="border: solid 1px black; border-radius: 5px;">
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 100px; float: right; ">
                                <asp:Label ID="Label55" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 70px;">
                                <asp:Label ID="Label54" runat="server" CssClass="LblParametersTitle" Text=":تاریخ ثبت طرح"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label29" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label5" runat="server" CssClass="LblParametersTitle" Text=":ساختار"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label26" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 120px;">
                                <asp:Label ID="Label3" runat="server" CssClass="LblParametersTitle" Text=":زمان هر قسمت"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label25" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label4" runat="server" CssClass="LblParametersTitle" Text=":تعداد"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 120px; float: right;">
                                <asp:Label ID="Label49" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label48" runat="server" CssClass="LblParametersTitle" Text=":شماره ثبت"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label33" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label8" runat="server" CssClass="LblParametersTitle" Text=":کارگردان"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label34" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:Label ID="Label7" runat="server" CssClass="LblParametersTitle" Text=":طبقه"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label31" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label6" runat="server" CssClass="LblParametersTitle" Text=":موضوع"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; float: right;">
                                <asp:Label ID="Label32" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label9" runat="server" CssClass="LblParametersTitle" Text=":دوبله"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label30" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label10" runat="server" CssClass="LblParametersTitle" Text=":تولید"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label28" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:Label ID="Label11" runat="server" CssClass="LblParametersTitle" Text=":تامین و آرشیو"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label27" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="width: 60px;">
                                <asp:Label ID="Label12" runat="server" CssClass="LblParametersTitle" Text=":زنده"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <div style="text-align: right; direction: ltr; float: right;">
                        <asp:Label ID="Label51" runat="server" CssClass="LblValues" Text="..."></asp:Label>

                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="TitleHeaderTd">شرایط عمومی</td>
            </tr>
            <tr>
                <td colspan="3" style="border: solid 1px black; border-radius: 5px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Style="text-align: right" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="LblMolaheze" runat="server" CssClass="LblValues" Text='<%# Eval("Title") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                      <asp:Label ID="LblRow" runat="server" CssClass="LblValues" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle VerticalAlign="Top" Width="20px" />

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="TitleHeaderTd">شرایط اختصاصی</td>
            </tr>
            <tr>
                <td colspan="3" style="border: solid 1px black; border-radius: 5px;">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Style="text-align: right" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="LblMolaheze2" runat="server" CssClass="LblValues" Text='<%# Eval("Title") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                   <asp:Label ID="LblRow2" runat="server" CssClass="LblValues" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle VerticalAlign="Top" Width="20px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="LblMolaheze3" runat="server" CssClass="LblValues"></asp:Label>
                </td>
            </tr>


            <tr>
                <td colspan="3" class="TitleHeaderTd">شرح مصوبات برآورد</td>
            </tr>
        </table>
        <table style="width: 100%; border: solid 1px black; border-radius: 5px;">
            <tr>
                <td colspan="3" style="float: right;">

                    <table>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label38" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="text-align: right">
                                <asp:Label ID="Label14" runat="server" CssClass="LblParametersTitle" Text=":اخذ ویزا"></asp:Label>
                            </td>
                            <td style="text-align: right; width: 160px;">
                                <asp:Label ID="Label35" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="text-align: right; width: 40px;">
                                <asp:Label ID="Label17" runat="server" CssClass="LblParametersTitle" Text=":خریدآرشیو"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label41" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label22" runat="server" CssClass="LblParametersTitle" Text=":مدت زمان تحویل "></asp:Label>
                            </td>
                            <td style="text-align: right; width: 160px;">
                                <asp:Label ID="Label37" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                            </td>
                            <td style="text-align: right; width: 40px;">
                                <asp:Label ID="Label15" runat="server" CssClass="LblParametersTitle" Text=":موسیقی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label40" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                </td>
                <td colspan="1" style="text-align: right; direction: ltr; width: 120px;">
                    <asp:Label ID="Label21" runat="server" CssClass="LblParametersTitle" Text=":رقم مصوب  دقیقه ای"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label18" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                </td>
                <td colspan="1" style="text-align: right; direction: ltr; width: 120px; vertical-align: top;">
                    <asp:Label ID="Label52" runat="server" CssClass="LblParametersTitle" Text=":لیست نفرات و عوامل"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label19" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                </td>
                <td colspan="1" style="text-align: right; direction: ltr; width: 200px;">
                    <asp:Label ID="Label53" runat="server" CssClass="LblParametersTitle" Text=": مدت تصویربرداری به تفکیک لوکیشن"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label16" runat="server" CssClass="LblValues" Text=""></asp:Label>
                </td>
                <td colspan="1" style="text-align: right; direction: ltr; width: 120px;">
                    <asp:Label ID="Label13" runat="server" CssClass="LblParametersTitle" Text=":نحوه و درصد مشارکت"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="vertical-align: top">
                    <asp:Label ID="Label45" runat="server" CssClass="LblValues" Text=""></asp:Label>
                </td>
                <td colspan="1" style="text-align: right; width: 150px;">
                    <asp:Label ID="Label44" runat="server" CssClass="LblParametersTitle" Text=":نحوه پرداخت"></asp:Label>
                </td>
            </tr>            
        </table>
         <table style="width: 100%;">            
            <tr>
                <td style="text-align: right; float: right;">
                    <asp:DataList Dir="Rtl" Width="100%" RepeatDirection="Horizontal" CssClass="LblNotify" ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" RepeatColumns="4" ShowFooter="False" ShowHeader="False">
                        <ItemTemplate>
                            <div style="width: 190px; height: 100px; border: solid 1px black; border-radius: 5px; background-color: #cccccc; text-align: center;">
                                <asp:Label ID="RoleIDLabel" runat="server" Text='<%# DepTitle(Eval("RoleID")) %>' CssClass="LblParameters2" />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baravord1ConnectionString %>" SelectCommand="SELECT ID, PageTitle, RoleID, Sort, ChannelID FROM Sign
where PageTitle=@Page and ChannelId=@ChannelId
 ORDER BY Sort">
                        <SelectParameters>
                            <asp:Parameter Name="Page" />
                            <asp:Parameter Name="ChannelId" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
