<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateSkill.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.UpdateSkill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4 >Update Skills Page</h4>
        <br />
        <asp:TextBox ID="TxtSkill" runat="server" CssClass="form-control" placeholder="enter a skill" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success btn-block" OnClick="Button1_Click" />
    </div>
</asp:Content>
