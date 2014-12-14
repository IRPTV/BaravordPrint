<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintCostinfo.aspx.cs" Inherits="BaravordWeb.PrintCostinfo" %>

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
            <thead>
                <tr>
                    <th>
                        <div>
                            <table style="width: 100%; border: solid 2px black; border-radius: 5px;">
                                <tr>
                                    <td style="width: 200px; text-align: left;">
                                        <asp:Image ID="Image1" runat="server" Height="50px" />
                                    </td>
                                    <td colspan="3" style="vertical-align: top">
                                        <table dir="rtl" style="width: 100%;">
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:Label dir="rtl" ID="Label59" runat="server" CssClass="LblParameters" Font-Size="13pt" Text="امور اطلاعات و برنامه ریزی"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:Label dir="rtl" ID="Label55" runat="server" CssClass="LblParameters" Font-Size="13pt" Text="امور اطلاعات و برنامه ریزی"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:Label dir="rtl" ID="Label57" runat="server" CssClass="LblParameters" Font-Size="13pt" Text="نوع برآورد:برنامه سازی"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td colspan="2" style="width: 200px; float: right;">
                                        <table dir="rtl">
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
                                            <tr>
                                                <td>
                                                    <asp:Label dir="rtl" ID="Label13" runat="server" CssClass="LblParametersTitle" Text=":تاریخ  آخرین اصلاح"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label dir="rtl" ID="Label14" runat="server" CssClass="TitleHeaderTd" Text=":عنوان طرح" Width="100px"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <table style="width: 100%; border: solid 1px black; border-radius: 5px; background-color: #cccccc;">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label48015" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label48014" runat="server" CssClass="LblParametersTitle" Text=":مدیریت / واحد"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label24" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                                </td>
                                                <td style="width: 70px; text-align: right;">
                                                    <asp:Label ID="Label2" runat="server" CssClass="LblParametersTitle" Text=": تهیه کننده"></asp:Label>
                                                </td>
                                                <td style="text-align: right">
                                                    <asp:Label ID="Label23" Font-Size="12pt" runat="server" CssClass="LblParametersTitle" Text="..."></asp:Label>
                                                </td>
                                                <td style="width: 70px;">
                                                    <asp:Label ID="Label1" runat="server" CssClass="LblParametersTitle" Text=":نام برنامه"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label31" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label6" runat="server" CssClass="LblParametersTitle" Text=":موضوع"></asp:Label>
                                    </td>
                                    <td style="width: 180px">
                                        <asp:Label ID="Label29" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 70px; text-align: right;">
                                        <asp:Label ID="Label5" runat="server" CssClass="LblParametersTitle" Text=":ساختار"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label51" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label50" runat="server" CssClass="LblParametersTitle" Text=":هدف"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label32" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label9" runat="server" CssClass="LblParametersTitle" Text=":دوبله"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label33" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 70px; text-align: right;">
                                        <asp:Label ID="Label8" runat="server" CssClass="LblParametersTitle" Text=":کارگردان"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label34" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label7" runat="server" CssClass="LblParametersTitle" Text=":طبقه"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label30" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label10" runat="server" CssClass="LblParametersTitle" Text=":تولید"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 70px; text-align: right;">
                                        <asp:Label ID="Label11" runat="server" CssClass="LblParametersTitle" Text=":تامین و آرشیو"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label27" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label12" runat="server" CssClass="LblParametersTitle" Text=":زنده"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label48013" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 70px; text-align: right;">
                                        <asp:Label ID="Label48011" runat="server" CssClass="LblParametersTitle" Text=":نوع تسویه حساب"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label48008" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 120px; text-align: right;">
                                        <asp:Label ID="Label48005" runat="server" CssClass="LblParametersTitle" Text=":تاریخ تحویل به امورمالی"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label48007" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 100px; text-align: right;">
                                        <asp:Label ID="Label48004" runat="server" CssClass="LblParametersTitle" Text=": تاریخ تصویب برآورد"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label49" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label58" runat="server" CssClass="LblParametersTitle" Text=":مدت کل"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 70px; text-align: right;">
                                        <asp:Label ID="Label3" runat="server" CssClass="LblParametersTitle" Text=":مدت هر قسمت"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label4" runat="server" CssClass="LblParametersTitle" Text=":تعداد"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label48020" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label48018" runat="server" CssClass="LblParametersTitle" Text=":شماره طرح"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label48017" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 70px; text-align: right;">
                                        <asp:Label ID="Label48016" runat="server" CssClass="LblParametersTitle" Text=":نویسنده"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label48012" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label48010" runat="server" CssClass="LblParametersTitle" Text=":نوع برنامه"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td style="width: 40px; text-align: right;">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="width: 70px; text-align: right;">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label48021" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                    </td>
                                    <td style="width: 40px; text-align: right;">
                                        <asp:Label ID="Label48019" runat="server" CssClass="LblParametersTitle" Text=": تاریخ طرح"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" OnRowCreated="GridView3_RowCreated" OnDataBound="GridView3_DataBound">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="شرح کد">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label48002" runat="server" CssClass="LblParameters" Text='<%# Eval("Description") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="200" />
                                                <ItemStyle HorizontalAlign="Right" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ارزش کل">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label48" runat="server" CssClass="LblParametersdigit" Text='<%# string.Format("{0:n3}", 
                                                    double.Parse(  RowCost(int.Parse(Eval("unit").ToString()),int.Parse((Eval("Count").ToString())),
                                    double.Parse(Eval("Price_unit").ToString()),int.Parse(Eval("Session").ToString()),Eval("Session_Time").ToString(),1) )).ToString().Replace(".0000", "").Replace(".000", "") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="90" />

                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="هربرنامه">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label481" runat="server" CssClass="LblParametersdigit" Text='<%#   Spliter(RowCost(int.Parse(Eval("unit").ToString()),int.Parse((Eval("Count").ToString())),
                                                    double.Parse(Eval("Price_unit").ToString()),int.Parse(Eval("Session").ToString()),Eval("Session_Time").ToString(),
                                                    0)) %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="70" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ارزش واحد">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label482" runat="server" CssClass="LblParametersdigit" Text='<%#string.Format("{0:n3}", double.Parse(Eval("Price_unit").ToString())).ToString().Replace(".0000", "").Replace(".000", "")  %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="60" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="تعداد">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label483" runat="server" CssClass="LblParametersdigit" Text='<%# Eval("Count") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle Width="25" Font-Names="B Titr" Font-Size="10pt" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="واحد">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4800" runat="server" CssClass="LblGridTitleRow" Text='<%# SetUnit(Eval("Unit")) %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="50" Font-Names="B Titr" Font-Size="10pt" />

                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="عامل/فعالیت">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label480" runat="server" CssClass="LblGridTitleRow" Text='<%# Eval("Title") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="250" />

                                                <ItemStyle HorizontalAlign="Right" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="#">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblRowNumber" runat="server" CssClass="LblGridTitleRow" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="30" />

                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="LblParameters2">
                                    <table style="width: 100%; height: 30px;" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="width: 200px;">&nbsp;</td>
                                            <td style="width: 90px; text-align: left;">
                                                <asp:Label ID="Label52" runat="server" Text="Label" CssClass="LblParametersdigit"></asp:Label>
                                            </td>
                                            <td style="width: 70px; text-align: left;">
                                                <asp:Label ID="Label53" runat="server" Text="Label" CssClass="LblParametersdigit"></asp:Label></td>
                                            <td style="width: 60px; text-align: left;">
                                                <asp:Label ID="Label60" runat="server" Text="Label" CssClass="LblParametersdigit"></asp:Label></td>
                                            <td style="width: 25px; text-align: center;">
                                                <asp:Label ID="Label61" runat="server" Text="Label" CssClass="LblParametersdigit"></asp:Label></td>
                                            <td style="width: 50px; text-align: right;">
                                                <asp:Label ID="Label48003" runat="server" Text=":مجموع" CssClass="LblParametersdigit"></asp:Label>
                                            </td>
                                            <td style="text-align: right; width: 280px;">
                                                <asp:Label ID="Label54" Font-Size="11pt" BackColor="#cccccc" runat="server" CssClass="LblParametersdigit" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="TitleHeaderTd">شرایط عمومی</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Style="text-align: right" Width="100%">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Label ID="LblMolaheze" runat="server" CssClass="LblNotify" Text='<%# Eval("Title") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                      <asp:Label ID="LblRow" runat="server" CssClass="LblValues" Text='<%# Container.DataItemIndex+1+"-" %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle VerticalAlign="Top" Width="20px" />

                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="TitleHeaderTd">شرایط اختصاصی</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Style="text-align: right" Width="100%">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Label ID="LblMolaheze2" runat="server" CssClass="LblNotify" Text='<%# Eval("Title") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                      <asp:Label ID="LblRow" runat="server" CssClass="LblValues" Text='<%# Container.DataItemIndex+1+"-" %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle VerticalAlign="Top" Width="20px" />

                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:Label ID="LblMolaheze3" runat="server" CssClass="LblNotify"></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td class="TitleHeaderTd">جهت اطلاع</td>
                            </tr>
                        </table>
                        <div>
                            <asp:DataList Dir="Rtl" Width="100%" RepeatDirection="Horizontal" CssClass="LblNotify" ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" RepeatColumns="4" ShowFooter="False" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:CheckBox Text='<%# DepTitle(Eval("RoleID")) %>'   CssClass="LblParameters2" runat="server" />                                    
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
                        </div>
            </tbody>
        </table>
    </form>
</body>
</html>
