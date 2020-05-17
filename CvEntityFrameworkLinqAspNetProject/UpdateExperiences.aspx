<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateExperiences.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.UpdateExperiences" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <h4>Update Experience Information</h4>
        <br />
        <asp:TextBox ID="TxtExperience" runat="server" CssClass="form-control" placeholder="enter a experience information" TextMode="MultiLine" Height="50"></asp:TextBox>
        <br />
        <asp:Button ID="BtnUpdateExperiences" runat="server" Text="Update" CssClass="btn btn-success btn-block" OnClick="BtnUpdateExperiences_Click" />
    </div>
</asp:Content>
