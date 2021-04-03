<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VulnerableSQLInjection._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <a href="Sanitized.aspx">Ir a Página Sanitizada</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Busque un Usuario: (SQL Injection Vulnerable)</h2>
            <p>
                <asp:TextBox ID="txtUsuarioVulnerable" runat="server" Width="1000"></asp:TextBox>
                <asp:Button ID="btnSubmitVulnerable" Text="Submit" runat="server" OnClick="btnSubmitVulnerable_Click" />
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <hr />
            <asp:GridView ID="gvResultsVulnerable" runat="server" AutoGenerateColumns="true">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
