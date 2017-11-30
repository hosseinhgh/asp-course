<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CheckOutPge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            height: 821px;
            margin-right: 0px;
        }
        .auto-style6 {
            text-align: right;
            width: 213px;
        }
        .auto-style7 {
            height: 9px;
            text-align: right;
            width: 213px;
        }
        .auto-style8 {
            width: 213px;
        }
        .auto-style9 {
            height: 29px;
            width: 213px;
        }
        .auto-style10 {
            height: 23px;
            width: 213px;
            text-align: left;
        }
        .auto-style11 {
            height: 26px;
            width: 213px;
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            height: 30px;
            width: 213px;
            text-align: right;
        }
        .auto-style15 {
            text-align: right;
            width: 213px;
            height: 22px;
        }
        .auto-style16 {
            height: 40px;
        }
        .auto-style17 {
            height: 40px;
            width: 19px;
        }
        .auto-style19 {
            height: 9px;
            text-align: left;
            width: 19px;
        }
        .auto-style20 {
            text-align: left;
            width: 19px;
        }
        .auto-style22 {
            height: 23px;
            width: 19px;
        }
        .auto-style23 {
            height: 26px;
            width: 19px;
        }
        .auto-style29 {
            height: 26px;
            text-align: left;
        }
        .auto-style30 {
            height: 30px;
            text-align: left;
        }
        .auto-style37 {
            height: 22px;
            text-align: left;
        }
        .auto-style38 {
            height: 9px;
            text-align: left;
        }
        .auto-style39 {
            text-align: left;
        }
        .auto-style41 {
            height: 23px;
        }
        .auto-style42 {
            width: 19px;
        }
        .auto-style43 {
            height: 30px;
            width: 19px;
        }
        .auto-style44 {
            text-align: left;
            width: 19px;
            height: 26px;
        }
        .auto-style45 {
            text-align: right;
            width: 213px;
            height: 29px;
        }
        .auto-style46 {
            text-align: left;
            height: 29px;
        }
        .auto-style47 {
            width: 19px;
            height: 29px;
        }
        .auto-style48 {
            height: 22px;
            width: 19px;
        }
        .auto-style49 {
            height: 11px;
            width: 213px;
            text-align: right;
        }
        .auto-style50 {
            height: 11px;
            text-align: left;
        }
        .auto-style51 {
            text-align: left;
            width: 19px;
            height: 11px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <input type="hidden" id="hiddenCount" value="0" runat="server" />
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style16" colspan="2">
                    <h1>Check Out</h1>
                </td>
                <td aria-setsize="180" class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" rowspan="4">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <h2>Contact Information:</h2>
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp; Email Address:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="tbEmail" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Must be a valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td aria-setsize="180" class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Email Re-entrry:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="tbReEmail" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black" ></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbEmail" ControlToValidate="tbReEmail" ErrorMessage="Must be match with first email address" ForeColor="Red">*</asp:CompareValidator>
                </td>
                <td aria-setsize="180" class="auto-style44">
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="tbFirstname" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="tbLastname" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp; Phone Number:</td>
                <td class="auto-style50">
                    <asp:TextBox ID="tbPhone" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbPhone" ErrorMessage="Use this format 123-456-7890" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
                <td aria-setsize="180" class="auto-style51">
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <h2 class="auto-style13">Billing Address</h2>
                </td>
                <td class="auto-style39">&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;&nbsp; Address:</td>
                <td class="auto-style46">
                    <asp:TextBox ID="tbAddress" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style47"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="tbCity" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:</td>
                <td class="auto-style39">
                    <asp:DropDownList ID="ddlState" runat="server" Height="16px" Width="180px" AutoPostBack="True" BackColor="#CCCCCC" ForeColor="Black" >
                       
                        <asp:ListItem Value="">Select State</asp:ListItem>
                        
                        
                        <asp:ListItem>Alberta</asp:ListItem>
                        <asp:ListItem>Ontario</asp:ListItem>
                        <asp:ListItem>BiritishColombia</asp:ListItem>
                        <asp:ListItem>Quebec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlState" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td aria-setsize="180" class="auto-style42">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Zip Code:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="tbZipecode" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <h2 class="auto-style13">Shipping Address</h2>
                </td>
                <td class="auto-style46"></td>
                <td aria-setsize="180" class="auto-style47"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style41"></td>
                <td aria-setsize="180" class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:CheckBox ID="chSameAddress" runat="server" Text="Same as a billing address" />
&nbsp;&nbsp; </td>
                <td class="auto-style39">&nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp; Address:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbAddress1" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="tbCity1" runat="server" OnTextChanged="tbCity1_TextChanged" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:</td>
                <td class="auto-style29">
                   
                    <asp:DropDownList ID="ddlState1" runat="server" Height="16px" Width="180px" AutoPostBack="True" BackColor="#CCCCCC" ForeColor="Black" >
                     
                        
                        <asp:ListItem Value="">Select State</asp:ListItem>
                        <asp:ListItem>Ontarion</asp:ListItem>
                        <asp:ListItem>Alberta</asp:ListItem>
                        <asp:ListItem>Biritish Colombia</asp:ListItem>
                        <asp:ListItem>Quebec</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td aria-setsize="180" class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style6">Zip Code:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="tbZipcode1" runat="server" Width="180px" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
                </td>
                <td class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style37">&nbsp;</td>
                <td aria-setsize="180" class="auto-style48"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Button ID="btSubmit" runat="server" Text="Check Out" Width="180px" BackColor="#CCCCCC" ForeColor="Blue" />
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style39">
                    &nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Print</td>
                <td class="auto-style39">
                    <asp:Label ID="lbPrint" runat="server" Text="Label"></asp:Label>
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">User Information</td>
                <td class="auto-style39">
                    &nbsp;</td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ListBox ID="lblBox" runat="server" Height="119px" Width="515px"></asp:ListBox>
                </td>
                <td aria-setsize="180" class="auto-style42">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
