<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="powerengineers.signup" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            height: 80px;
        }
        .auto-style2 {
            width: 98px;
        }
        .auto-style4 {
            height: 113px;
        }
        .auto-style5 {
            width: 98px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
            width: 160px;
        }
        .auto-style7 {
            height: 366px;
        }
        .auto-style8 {
            width: 160px;
        }
        </style>
    
  
</head>
<body style="width: 640px; height: 114px">
    <form id="form1" runat="server" class="auto-style7">
        <div class="auto-style4">
            <table class="auto-style1">
                <tr>
                     <td class="auto-style2">Name :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server"  Width="184px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email address :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server"  Width="181px" Height="16px"></asp:TextBox>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Send activation link" Width="145px"  />
                    </td>
                </tr>
            </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <br />
        
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
    </form>
</body>
</html>
