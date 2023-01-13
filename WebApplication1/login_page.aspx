<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .navbar1:hover{
         color:#007ACC;
            font-weight:100;
        }
        .navbar2:hover{
            color:#007ACC;
            font-weight:100;
        }
         .navbar3:hover{
            color:#007ACC;
            font-weight:100;
        }
         .navbar4:hover{
            color:#007ACC;
            font-weight:100;
        }
         #Button1:hover{
             color:#3A7196;
         }

            .hello a{
          color: #C7BCA1;       

         }
          .hello a:hover{
            color:white;
          }

    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div style="padding: 40px 0px 0px 0px; background-color: #403d39; height: 88px; font-size: 40px; color: #FFFFFF; text-align: center;">
            LOSTHING
            <br />
         

        
        </div>   
        <div style="border: 1px solid #686868; margin: 40px auto 0px auto; height: 400px; width: 500px; vertical-align: middle;">

            <div style="padding: 10px 0px 00px 0px; text-align: center; font-size: 35px; font-weight: bolder; font-family: arial, Helvetica, sans-serif; height: 68px;">
                Log In
                </div>
            <div style="font-family: Calibri; font-size: 20px">

                Username</div>
            <div>

                <asp:TextBox ID="TextBox1" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="26px" Width="493px"></asp:TextBox>

            </div>
              <div style="font-size: 20px; font-family: Calibri">

                  <br />
                  Password</div>
              <div>

                  <asp:TextBox ID="TextBox2" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="25px" Width="492px"></asp:TextBox>

            </div>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" Font-Size="25px" ForeColor="White" Height="52px" Text="Log In" Width="499px" OnClick="Button1_Click" />
            <br />
            <div style="text-align: center">

                <asp:LinkButton ID="LinkButton1" runat="server">Forgotten Password</asp:LinkButton>
                ?
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
