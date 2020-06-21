<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LINQtoXMLInsertApp.WebForm1" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title></title>  
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>  
<body>  
    <form id="form1" runat="server">  
    <center>  
        <div>  
            <table>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Label ID="Label1" runat="server" Text="Insert Data &amp; Select data using LINQ-to-XML" Font-Bold="True"  
                            Font-Size="Large" Font-Names="Verdana" ForeColor="Maroon"></asp:Label>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1">  
                        <asp:Label ID="Label6" runat="server" Text="Please Enter Id" Font-Size="Large" Font-Names="Verdana"  
                            Font-Italic="true"></asp:Label>  
                    </td>  
                    <td class="auto-style1">  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label2" runat="server" Text="Please Enter FirstName" Font-Size="Large"  
                            Font-Names="Verdana" Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label3" runat="server" Text="Please Enter LastName" Font-Size="Large"  
                            Font-Names="Verdana" Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label4" runat="server" Text="Please Enter Age" Font-Size="Large" Font-Names="Verdana"  
                            Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Button ID="Button1" runat="server" Text="Insert Data" Font-Names="Verdana" Width="161px"  
                            BackColor="Orange" Font-Bold="True" OnClick="Button1_Click" />  
                         <asp:Button ID="Button2" runat="server" Text="Select Data" Font-Names="Verdana" Width="161px"  
                            BackColor="Orange" Font-Bold="True" OnClick="Button2_Click" />  
                         </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <br />  
                        <asp:GridView ID="GridView1" runat="server" BackColor="#FFCC00" BorderColor="Tan"  
                            BorderWidth="1px" CellPadding="2" EnableModelValidation="True" ForeColor="Black"  
                            GridLines="None" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="332px">  
                            <AlternatingRowStyle BackColor="PaleGoldenrod"></AlternatingRowStyle>  
                            <FooterStyle BackColor="Tan"></FooterStyle>  
                            <HeaderStyle BackColor="Tan" Font-Bold="True"></HeaderStyle>  
                            <PagerStyle HorizontalAlign="Center" BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue">  
                            </PagerStyle>  
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite"></SelectedRowStyle>  
                            <Columns>  
                                <asp:BoundField DataField="FirstName" HeaderText="First Name" ReadOnly="true" />  
                                <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="true" />  
                            </Columns>  
                        </asp:GridView>  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Names="Verdana"></asp:Label>  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </center>  
    </form>  
</body>  
</html>