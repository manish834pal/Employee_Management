<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsersByAdmin.aspx.cs" Inherits="Project72_8623.ManageUsersByAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>

                <asp:GridView ID="gvregistration" runat="server" AutoGenerateColumns="false" OnRowCommand="gvregistration_RowCommand" >
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

                        <asp:TemplateField HeaderText="Date of Birth">
                            <ItemTemplate>
                                <%#Eval("dob") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="User Status">
                            <ItemTemplate>
                                <asp:Button ID="btnstatus" runat="server" Text=' <%#Eval("status").ToString() == "1" ? "InActive" : "Active"  %>' CommandName="S" CommandArgument=' <%#Eval("rid") %>' />
                                </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
