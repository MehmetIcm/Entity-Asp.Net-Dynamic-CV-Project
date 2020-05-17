<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>MAIL</th>
                <th>SUBJECT</th>
                <th>MESSAGE</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("ADSOYAD") %></td>
                        <td><%#Eval("MAIL") %></td>
                        <td><%#Eval("KONU") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" BackColor="#006266" NavigateUrl='<%# "MessageDetail.aspx?ID=" + Eval("ID") %>'>See The Message</asp:HyperLink>

                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
</asp:Content>
