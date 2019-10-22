<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="powerengineers.adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">  
.style1  
{  
font-size: large;  
text-align: center;  
}  
.style2  
{  
width: 272px;  
}  
.style3  
{  
width: 264px;  
}  
</style>  
</head>
<body>
    <form id="form1" runat="server">
         <div class="style1">  
                <strong>Get List of users From Database using Seleceted IDs</strong>  
            </div>  
            <table style="width:100%;">  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="style3">  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="style3">  
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True"   
AutoPostBack="True" DataTextField="id" DataValueField="id" Height="16px"   
Width="118px">  
                            <asp:ListItem Value="0">-- Select Id--</asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66"   
BorderColor="#CC3300" ForeColor="#6600FF" onclick="Button1_Click"   
Text="Click Here to show the Data" />  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="style3">  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="style3">  
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"   
CellPadding="4" DataKeyNames="id" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">  
                            <Columns>  
                                <asp:TemplateField HeaderText="UserId">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("id") %>'>  
                                        </asp:TextBox>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("id") %>'>  
                                        </asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>  
                                <asp:TemplateField HeaderText="Username">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'>  
                                        </asp:TextBox>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'>  
                                        </asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>  
                                <asp:TemplateField HeaderText="Password">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("city") %>'>  
                                        </asp:TextBox>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("city") %>'>  
                                        </asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>  
                            </Columns>  
                            <FooterStyle BackColor="White" ForeColor="#333333" />  
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />  
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />  
                            <RowStyle BackColor="White" ForeColor="#333333" />  
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />  
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />  
                            <SortedAscendingHeaderStyle BackColor="#487575" />  
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />  
                            <SortedDescendingHeaderStyle BackColor="#275353" />  
                        </asp:GridView>  
                    </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="style3">  
 </td>  
                    <td>  
 </td>  
                </tr>  
            </table>  
    </form>
</body>
</html>
