<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="found_detail.aspx.cs" Inherits="WebApplication1.WebForm7" %>

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


        <div style="padding: 90px 1px 40px 420px; font-size: 30px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Enter Your Founded Item Details
        </div>
        <div class="main_box1" style="padding: 0px 0px 12px 0px">
             <div class="box1" style="padding: 1px 1px 1px 290px; font-size: 22px;">
                 <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email ID:</label>
                 <asp:TextBox runat="server" Height="21px" Width="172px" ID="id_box"></asp:TextBox>

             &nbsp;</div>
             <div class="box1" style="padding: 1px 1px 1px 90px">
                 <label style="font-size: 22px">&nbsp; Location</label>:&nbsp;
                   <asp:TextBox runat="server"  Height="21px" Width="188px" ID="location_box"></asp:TextBox>
             </div>
        </div>
       
        <div class="main_box2" style="padding: 0px 0px 12px 0px" >
              <div class="box2" style="padding: 1px 1px 1px 290px; font-size: 22px;">
                 <label style="font-size: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Item:</label>
                  <asp:TextBox runat="server"  Height="21px" Width="172px" ID="category_box"></asp:TextBox>
              &nbsp;</div>
              <div class="box2" style="padding: 1px 1px 1px 90px" >
                  <label style="font-size: 22px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description:</label>
                  <asp:TextBox runat="server"  Height="21px" Width="172px" ID="descr_box"></asp:TextBox>
              </div>
        </div>
      
        <div class="main_box3">
            <div class="box3" style="padding: 1px 1px 1px 290px; font-size: 22px;">
                <label style="font-size: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Color: </label>
                 <asp:TextBox runat="server"  Height="21px" Width="209px" ID="color_box"></asp:TextBox>
            </div>
            <div class="box3" style="padding: 1px 1px 1px 90px">
                <label style="font-size: 22px">&nbsp;Status: 
                </label>
&nbsp;</div>
            <asp:ListBox ID="statuss" runat="server" Height="30px" Width="215px">
                <asp:ListItem>Found</asp:ListItem>
            </asp:ListBox>
        </div>
   
        <br />
        <br />
   <div style="padding: 5px 0px 0px 855px">

       <asp:Button ID="Button1" runat="server" Text="Submit" Width="147px" 
           BackColor="#403D39" BorderStyle="None" Font-Size="15pt" ForeColor="White" 
           Height="37px" OnClick="Button1_Click" />

   </div>
        <br />
 <div style="height: 454px; background-color: #403d39;">
          <div style="border-style: 0; padding: 20px 0px 0px 0px; font-size: 40px; color: #FFFFFF; text-align: center; font-weight: normal;">
              Founded Items<br />
&nbsp;<div style="padding: 0px; height: 341px; font-size: 25px;">
                  <asp:GridView ID="GridView1" runat="server" OnDataBinding="GridView1_DataBinding" BackColor="White" Font-Size="15pt" ForeColor="Black" Width="1780px">
                  </asp:GridView>
              </div>


          </div>
      </div>    
    </form>
</body>
</html>
