<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Giftz.Presentation_Layer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 39px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div style="margin:200px;">

    <table align="center" style="border: 3px ridge #999999; width:350px;">
    <tr>
    <td align="center" colspan="2">
    <asp:Label ID="lbl1" runat="server" Font-names="Consolas" ForeColor="#0033CC" Text="Log In" style="Font-weight:900"></asp:Label>
    <hr />
    </td>
    </tr>
        <td align="center" style="width:50%">
        Username
        </td>
        <td style="width:50%">
        <asp:TextBox ID="txtLoginID" runat="server"></asp:TextBox>
        </td>
        </tr>

         <td align="center" style="width:50%">
        Password
        </td>
        <td style="width:50%">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        </tr>

        <tr>
        <td align="center" style="width:50%">
        &nbsp
        </td>
        <td style="width:50%">
        <asp:button ID="btnLogin" runat="server" Text="Log In" onclick="btnLogin_Click"></asp:button>
        </td>
        </tr>

        <tr>
        <td align="center" colspan="2" class="auto-style1">
        <hr/>
        
         <asp:label ID="lbl_alert" runat="server" Font-names="Consolas" ForeColor="Red"></asp:label>
        </td>
        </tr>

        </tr>
    
    </table>
    

    </div>
    </form>
</body>
</html>
