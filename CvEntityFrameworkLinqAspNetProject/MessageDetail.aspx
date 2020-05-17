<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageDetail.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.MessageDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4 >Messages</h4>
        <br />
        <asp:TextBox ID="TxtSender" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="TxtSubject" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="TxtMessage" TextMode="MultiLine" runat="server" CssClass="form-control" Height="100"  Enabled="false"></asp:TextBox>
        <br />
    </div>
</asp:Content>
