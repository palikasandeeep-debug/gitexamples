<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gitexample.aspx.cs" Inherits="gitexamples.Gitexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                      <div>
           <table align="center">
               <tr>
                   <td>
                       <asp:Label ID="lblhead" runat="server">Person Information</asp:Label>
                   </td>
               </tr>
           </table>
       <table align="center">

               <tr>
                   <td>
               enter ur name <asp:TextBox ID="txtfname" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txtfname" ErrorMessage="Fist name manditary" ForeColor="Red">

                       </asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="revfname" runat="server" ControlToValidate="txtfname" ValidationExpression="^[a-zA-z]+$" ErrorMessage="only Alphabets are allowed" ForeColor="Orange">

                       </asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td>
                enter ur last name <asp:TextBox ID="txtlname" runat="server" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="rfvlname" runat="server" ControlToValidate="txtlname" ErrorMessage=" Last name manditary" ForeColor="Red">

 </asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="Revlname" runat="server" ControlToValidate="txtlname" ValidationExpression="^[a-zA-z]+$" ErrorMessage="only Alphabets are allowed" ForeColor="Orange">

</asp:RegularExpressionValidator>
                   </td>
               </tr>
                <tr>
               <td>
             enter ur Mobilenumber <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="rfvmob" runat="server" ControlToValidate="txtmob" ErrorMessage="pls enter mobile number" ForeColor="Red">

                   </asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="revmob" runat="server" ControlToValidate="txtmob" ValidationExpression="^[0-9]{10}$" ForeColor="red" ErrorMessage="only 10 digits allowed ">

                   </asp:RegularExpressionValidator>
            </td>
            </tr>
                <tr>
                <td>
                 enter ur email <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="pls enter email">

                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="pls enter valid email" ForeColor="Orange">

                    </asp:RegularExpressionValidator>
                </td>
               </tr>
                      <tr>
     <td>
 enter password <asp:TextBox ID="txtpass" runat="server"  TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="Rfvpass" runat="server" ControlToValidate="txtpass" ErrorMessage="pls enter password" ForeColor="Red">
         </asp:RequiredFieldValidator>     
     </td>
 </tr>
                     
          <tr>
    <td>
enter confirm password <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="Rfvcpass" runat="server" ControlToValidate="txtcpass" ErrorMessage="pls enter password" ForeColor="Red" >
        </asp:RequiredFieldValidator>  
        <asp:CompareValidator ID="cvpass" runat="server" ControlToValidate="txtcpass" ControlToCompare="txtpass" ForeColor="Red" ErrorMessage="password is not matched ">

        </asp:CompareValidator>
    </td>
</tr>
               <tr>
                   <td>

               gender<asp:RadioButtonList ID="radiogen" runat="server">
                   <asp:ListItem Value="male">male</asp:ListItem>
                   <asp:ListItem Value="female">female</asp:ListItem>
                   <asp:ListItem Value="other">other</asp:ListItem>
                     </asp:RadioButtonList>
                          <asp:RequiredFieldValidator ID="rfvradiogen" runat="server" ControlToValidate="radiogen" ForeColor="Red" ErrorMessage="pls sect gender"
       ></asp:RequiredFieldValidator>
                       </td>
               
                   </tr>
         
              
       
           <tr>
               <td>
               <asp:ValidationSummary 
    ID="ValidationSummary1" 
    ForeColor="Red" 
    HeaderText="Please fix the following errors:" 
    runat="server" />
               </td>
</tr>
               </table>
     <table align="center">
               <tr>
                   <td>
                       <asp:Label ID="lblmsg" runat="server" ForeColor="Beige" BackColor="Blue"></asp:Label>
                   </td>
               </tr>
           </table>
            <table align="center">
           <tr>
            <td>
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
        </td>
    </tr>
</table>
         
                          

        </div>
    </form>
</body>
</html>
