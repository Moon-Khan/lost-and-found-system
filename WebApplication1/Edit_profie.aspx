<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_profie.aspx.cs" Inherits="WebApplication1.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="padding: 40px 0px 0px 0px; background-color: #403d39; height: 82px; font-size: 40px; color: #FFFFFF; text-align: center;">
            LOSTHING
            <br />

        </div>
        <div style="border: 1px solid #686868; margin: 40px auto 0px auto; height: 400px; width: 500px; vertical-align: middle;">

            <div style="padding: 10px 0px 00px 0px; text-align: center; font-size: 35px; font-weight: bolder; font-family: Arial, Helvetica, sans-serif;">
                Edit Profile
                <br />
             </div>
            <div style="font-family: Calibri; font-size: 20px">

                Email ID</div>
            <div>
                <asp:TextBox ID="id_box" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="24px" Width="493px"></asp:TextBox>
            </div>
            <div style="font-size: 20px; font-family: Calibri">
                <br />Password</div>
            <div>
                <asp:TextBox ID="password_box" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="24px" Width="492px"></asp:TextBox>
            </div>
            <br />
            <div style="font-size: 20px; font-family: Calibri">
    
                  Name</div>
            <div>
                <asp:TextBox ID="name_box" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="25px" Width="492px"></asp:TextBox>
                <br />
                <br />
            </div>
            <div style="font-size: 20px; font-family: Calibri">
    
                  Contact</div>
            <div>
                <div>
                    <asp:TextBox ID="cont_box" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="23px" Width="492px"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" Font-Size="25px" ForeColor="White" Height="52px" Text="Edit" Width="499px" OnClick="Button1_Click" Font-Names="arial, helvetica, sans-serif" />
                <br />
                <div style="text-align: center">
                    <br />
                </div>
            </div>
         </div>
    </form>
</body>
</html>
