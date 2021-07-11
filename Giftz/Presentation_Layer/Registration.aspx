<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Giftz.Presentation_Layer.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 <form id="form1" runat="server">
    <div style="border: 1px dotted">
        <div align="center">
       <h2>
       Sign Up</h2>
         <hr />
       <table align="center" cellspacing="1" style="width: 100%">
           <tr>
               <td style="width: 50%; padding-left:100px;" align="left" >
                   Username</td>
               <td style="width: 50%;" align="left" >
                  
                <asp:TextBox ID="txtUsername" runat="server" Width="271px" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
               </td>
           </tr>

           <tr>
             <td style="width: 50%; padding-left:100px;" align="left" >
                &nbsp;</td>
            </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                  Fullname</td>
            <td style="width: 50%;" align="left"  >
                  
                <asp:TextBox ID="txtFullname" runat="server" Width="271px"></asp:TextBox>
               </td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                   &nbsp;</td>
            <td style="width: 50%; padding-left:100px;" align="left" >
            &nbsp;</td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                Email</td>
            <td style="width: 50%;" align="left"  >
            
                <asp:TextBox ID="txtEmail" runat="server" Width="271px"></asp:TextBox>
            
            </td>
           </tr>

           <td style="width: 50%; padding-left:100px;" align="left" >
                   &nbsp;</td>
            <td style="width: 50%; padding-left:100px;" align="left" >
            &nbsp;</td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                Religion</td>
            <td style="width: 50%;" align="left"  >
            
                <asp:TextBox ID="txtReligion" runat="server" Width="271px"></asp:TextBox>
            
            </td>
           </tr>

            <td style="width: 50%; padding-left:100px;" align="left" >
                   &nbsp;</td>
            <td style="width: 50%; padding-left:100px;" align="left" >
            &nbsp;</td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                DOB</td>
            <td style="width: 50%;" align="left"  >
            
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" OnTextChanged="txtDOB_TextChanged"></asp:TextBox>
            
            </td>
           </tr>

            <td style="width: 50%; padding-left:100px;" align="left" >
                   &nbsp;</td>
            <td style="width: 50%; padding-left:100px;" align="left" >
            &nbsp;</td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                Gender</td>
            <td style="width: 50%;" align="left"  >
                
                <asp:RadioButtonList ID="RadioGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    
                </asp:RadioButtonList>
            
            </td>
           </tr>

           <td style="width: 50%; padding-left:100px;" align="left" >
                   &nbsp;</td>
            <td style="width: 50%; padding-left:100px;" align="left" >
            &nbsp;</td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                Password</td>
            <td style="width: 50%;" align="left"  >
            
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="271px" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
            
            </td>
           </tr>

           <td style="width: 50%; padding-left:100px;" align="left" >
                   &nbsp;</td>
            <td style="width: 50%; padding-left:100px;" align="left" >
            &nbsp;</td>
           </tr>

           <tr>
           <td style="width: 50%; padding-left:100px;" align="left" >
                Confirm Password</td>
            <td style="width: 50%;" align="left"  >
            
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" Width="271px" OnTextChanged="txtConfirmPass_TextChanged"></asp:TextBox>
            
            </td>
           </tr>
          


             <tr>
             <td style="width: 50%; padding-left:100px;" align="left" >
                &nbsp;</td>
             <td style="width: 50%; padding-left:100px;" align="left">
                &nbsp;</td>
            </tr>

            <tr>
             <td style="width: 50%; padding-left:100px;" align="left" >
                &nbsp;</td>
             <td style="width: 50%;"  align="left" >
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" 
                     Height="30px" onclick="btnSubmit_Click" />
                </td>
            </tr>
       </table>
</div>

    </div>
    </form>

</body>
</html>
