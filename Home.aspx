<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User.Master" CodeBehind="Home.aspx.cs" Inherits="Project72_8623.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome <asp:Label id="lblname" runat="server"></asp:Label></h1>
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvregistration" runat="server" AutoGenerateColumns="false">
                    <Columns>


                        <asp:TemplateField HeaderText="User Id">
                            <ItemTemplate>
                                <%#Eval("rid") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User Name">
                            <ItemTemplate>
                                <%#Eval("name") %>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="User Gender">
                            <ItemTemplate>
                                <%# Eval("gender").ToString() == "1" ? "Male" : Eval("gender").ToString() == "2" ? "Female" :  "Other" %>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="User Email">
                            <ItemTemplate>
                                <%#Eval("email") %>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="User Password">
                            <ItemTemplate>
                                <%#Eval("password") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User Password">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="D" CommandArgument=' <%#Eval("rid") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>




                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
