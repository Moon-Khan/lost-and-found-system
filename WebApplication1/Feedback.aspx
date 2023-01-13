<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication1.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .box1{
           display:inline-block;

        }
        .box2{
           display:inline-block;

        }
        .box3{
           display:inline-block;

        }
       .hello a{
          color: #C7BCA1;       

       }
        .hello a:hover {
            color: white;
        } 
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="padding: 35px 0px 0px 0px; background-color: #403d39; height: 90px; font-size: 40px; color: #FFFFFF; text-align: center; margin-top: 5px;">
                LOSTHING<br />
          <div class="hello">
              <a style="padding: 0px 0px 0px 395px; font-family: Philosopher; font-size: 14px; text-decoration: none;" 
                  href="home_page.aspx">HOME</a>
               <a style="padding: 3px 25px 1px 25px; font-family: Philosopher; font-size: 14px; text-decoration: none;" 
                  href="About%20Us.aspx">ABOUT US</a>
               <a style="font-family: Philosopher; font-size: 14px; text-decoration: none;" href="Services.aspx">SERVICES</a>
               <a style="padding: 0px 0px 0px 300px; font-family: Philosopher; font-size: 24px; text-decoration: none;" 
                  href="Signup.aspx">Sign Up</a>

          </div>

        </div>


        <br />
        <br />
   <div style="margin: 40px auto 0px auto; height: 316px; width: 500px; vertical-align: middle;">

            <div style="padding: 10px 0px 00px 0px; text-align: center; font-size: 35px; font-weight: bolder; font-family: Arial, Helvetica, sans-serif;">
                Give Your Feedback
                <br />
                <br />
             </div>
            <div style="font-family: Calibri; font-size: 20px">

                Email ID</div>
            <div>
                <asp:TextBox ID="id_box" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="24px" Width="493px"></asp:TextBox>
            </div>
            <div style="font-size: 20px; font-family: Calibri">
                <br />Descripton</div>
            <div>
                <asp:TextBox ID="Des_box" runat="server" BackColor="#E4E4E4" BorderColor="#9A9A9A" Height="24px" Width="492px"></asp:TextBox>
            </div>
            <br />
            <br />
            <div>
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" Font-Size="25px" ForeColor="White" Height="52px" Text="Submit" Width="499px" OnClick="Button1_Click" Font-Names="arial, helvetica, sans-serif" />
                <br />
              
            </div>
    </form>
</body>
</html>
