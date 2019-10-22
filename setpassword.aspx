<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setpassword.aspx.cs" Inherits="powerengineers.setpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h1><asp:Label ID="Label1" runat="server" Text="Set  your password here."></asp:Label>
       </h1>
            <div>
  
               
                <br />
                <asp:Label ID="Label3" runat="server" Text=" Email Id : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="273px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="  Password : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="273px"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label5" runat="server" Text=" Re-enter Password : "></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="273px"></asp:TextBox>
                <br /><br />

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <br />
        </div>
        <div>
        </div>
    </form>
</body>
</html>
