<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintProvider.aspx.cs" Inherits="BaravordWeb.PrintProvider" %>

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
                            <td class="TitleHeaderTd" colspan="3">مشخصات&nbsp; تهیه کننده </td>
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
                                    <asp:Label ID="Lbl1" dir="Ltr" Text='<%# GenerateBaravordCode( DateConversion.GD2JD(DateTime.Parse(Eval("ACT_DATETIME").ToString())),int.Parse(Eval("channelid").ToString()))+Eval("Baravord_Number") %>' CssClass="Providers" runat="server" />
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
    </form>
</body>
</html>
