<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="activate.aspx.cs" Inherits="powerengineers.activate" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 70px;
        }
        .auto-style2 {
            width: 139px;
        }
    </style>
</head>
<body style="height: 150px">
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox4" runat="server" Width="517px"></asp:TextBox>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Your activation code :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="162px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verify email" Width="104px" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:TextBox ID="TextBox3" runat="server" Width="517px"></asp:TextBox>
    </form>
</body>
</html>
