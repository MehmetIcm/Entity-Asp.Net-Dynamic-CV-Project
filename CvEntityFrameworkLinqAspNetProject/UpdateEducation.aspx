<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateEducation.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.UpdateEducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4>Update Education Information</h4>
        <br />
        <asp:TextBox ID="TxtEducation" runat="server" CssClass="form-control" placeholder="enter a education information" TextMode="MultiLine" Height="50"></asp:TextBox>
        <br />
        <asp:Button ID="BtnUpdateEducation" runat="server" Text="Update" CssClass="btn btn-success btn-block" OnClick="BtnUpdateEducation_Click" />
    </div>
</asp:Content>
