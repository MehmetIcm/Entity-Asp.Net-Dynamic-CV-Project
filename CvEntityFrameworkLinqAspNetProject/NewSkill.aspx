<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewSkill.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.NewSkill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4 style="text-align:center">Add New Skills Page</h4>
        <br />
        <asp:TextBox ID="TxtSkill" runat="server" CssClass="form-control" placeholder="Enter a skill" style="text-align:center"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-info btn-block" OnClick="Button1_Click"/>
    </div>
</asp:Content>
