<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="RegistrationForm.aspx.cs" Inherits="Project72_8623.RegistrationForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <table>
                <asp:ScriptManager ID="mng" runat="server"></asp:ScriptManager>
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Date Of Birth :</td>
                    <td>
                        <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                        <ajax:CalendarExtender ID="caldob" runat="server" PopupButtonID="txtdob" PopupPosition="TopRight" TargetControlID="txtdob"   />
                    </td>
                </tr>

                <tr>
                    <td>Gender :</td>
                    <td>
                        <asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="3"></asp:ListItem>

                        </asp:RadioButtonList></td>
                </tr>

                <tr>
                    <td>Email :</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Password :</td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnregistration" runat="server" Text="Register" OnClick="btnregistration_Click"></asp:Button></td>
                </tr>

                 
            </table>
        </asp:Content>
