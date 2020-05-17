<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.Skills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>SKILL</th>
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("YETENEK") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "DeleteSkill.aspx?ID=" + Eval("ID") %>'>Delete</asp:HyperLink>

                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "UpdateSkill.aspx?ID=" + Eval("ID") %>'>Update</asp:HyperLink>

                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <a href="NewSkill.aspx" class="btn btn-primary">Add New Skill</a>
    </div>
</asp:Content>
