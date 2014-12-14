<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintSupport2.aspx.cs" Inherits="BaravordWeb.PrintSupport2" %>

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
                                    <td style="vertical-align: top">
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
                                                    <asp:Label dir="rtl" ID="Label57" runat="server" CssClass="LblParameters" Font-Size="13pt" Text="نوع برآورد:پشتیبانی"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 200px; float: right;">
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
                                                    <asp:Label dir="rtl" ID="Label13" runat="server" CssClass="LblParametersTitle" Text=":تاریخ  اصلاحیه"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label dir="rtl" ID="Label14" runat="server" CssClass="TitleHeaderTd" Text=":عنوان طرح" Width="100px"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <table style="width: 100%; border: solid 1px black; border-radius: 5px; background-color: #cccccc;">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label24" runat="server" CssClass="LblValues" Text="..."></asp:Label>
                                                </td>
                                                <td style="width: 70px; text-align: right;">
                                                    <asp:Label ID="Label2" runat="server" CssClass="LblParametersTitle" Text=": مدیریت / واحد"></asp:Label>
                                                </td>
                                                <td style="text-align: right">
                                                    <asp:Label ID="Label23" runat="server" Font-Bold="true" Font-Size="12pt" CssClass="LblParametersTitle" Text="..."></asp:Label>
                                                </td>
                                                <td style="width: 70px;">
                                                    <asp:Label ID="Label1" runat="server" CssClass="LblParametersTitle" Text=":نام برآورد"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
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
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" OnRowCreated="GridView3_RowCreated" OnDataBound="GridView3_DataBound">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:TemplateField HeaderText="شرح کد">
                                    <ItemTemplate>
                                        <asp:Label ID="Label48002" runat="server" CssClass="LblParametersSmall" Text='<%# Eval("DESCPRIPTION") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="200" />
                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ارزش کل">
                                    <ItemTemplate>
                                        <asp:Label ID="Label48" runat="server" CssClass="LblParametersdigit" Text='<%# string.Format("{0:n3}", 
                                                    double.Parse(  RowCostSupport(int.Parse(Eval("unit").ToString()),float.Parse((Eval("Count").ToString())),
                                    double.Parse(Eval("PRICE_UNIT").ToString()),float.Parse(Eval("SHIFT").ToString()),float.Parse(Eval("MONTH").ToString())) )).ToString().Replace(".0000", "").Replace(".000", "") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="90" />
                                    <ItemStyle HorizontalAlign="Right" />

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ماه">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4833" runat="server" CssClass="LblParametersdigit" Text='<%# Eval("month") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="30" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="شیفت">
                                    <ItemTemplate>
                                        <asp:Label ID="Label483" runat="server" CssClass="LblParametersdigit" Text='<%# Eval("shift") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="30" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ارزش واحد">
                                    <ItemTemplate>
                                        <asp:Label ID="Label482" runat="server" CssClass="LblParametersdigit" Text='<%#string.Format("{0:n3}", double.Parse(Eval("Price_unit").ToString())).ToString().Replace(".0000", "").Replace(".000", "")  %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Right" />
                                    <HeaderStyle Font-Names="B Titr" Font-Size="10pt" Width="60" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="تعداد">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4899" runat="server" CssClass="LblParametersdigit" Text='<%# Eval("Count") %>'></asp:Label>
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
                                        <asp:Label ID="Label480" runat="server" CssClass="LblGridTitleRow" Text='<%# RoleTitle(Eval("Role_Id")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="B Titr" Font-Size="8pt" Width="150" />

                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ردیف">
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
                                <td style="width: 70px; text-align: left;">
                                    <asp:Label ID="Label52" runat="server" Text="Label" CssClass="LblParametersdigit"></asp:Label>
                                </td>
                                <td style="width: 50px; text-align: left;">&nbsp;</td>
                                <td style="width: 70px; text-align: left;">
                                    <asp:Label ID="Label60" runat="server" Text="Label" CssClass="LblParametersdigit"></asp:Label></td>
                                <td style="width: 30px; text-align: center;">
                                    <asp:Label ID="Label61" runat="server" Text="Label" CssClass="LblParametersdigit" Visible="False"></asp:Label></td>
                                <td style="width: 50px; text-align: right;">
                                    <asp:Label ID="Label48003" runat="server" Text=":مجموع" CssClass="LblParametersdigit"></asp:Label>
                                </td>
                                <td style="text-align: right; width: 150px;">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="TitleHeaderTd">توضیحات</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblMolaheze3" runat="server" CssClass="LblNotify"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="TitleHeaderTd">جهت اطلاع</td>
                </tr>

            </tbody>
        </table>
        <div>
            <asp:DataList Dir="Rtl" Width="100%" RepeatDirection="Horizontal" CssClass="LblNotify" ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" RepeatColumns="4" ShowFooter="False" ShowHeader="False">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" Text='<%# DepTitle(Eval("RoleID")) %>' CssClass="LblParameters2" runat="server" />

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
    </form>
</body>
</html>
