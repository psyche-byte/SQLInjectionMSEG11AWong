<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanitized.aspx.cs" Inherits="VulnerableSQLInjection._Sanitized" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <div class="row">
        <div class="col-md-12">
            <a href="Default.aspx">Ir a Página Vulnerable</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Busque un Usuario: (SQL Injection Sanitizado/Parametrizado)</h2>
            <p>
                <asp:TextBox ID="txtUsuarioProtegido" runat="server" Width="1000"></asp:TextBox>
                <asp:Button ID="btnSubmitProtegido" Text="Submit" runat="server" OnClick="btnSubmitProtegido_Click" />
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <hr />
            <asp:GridView ID="gvResultsProtegido" runat="server" AutoGenerateColumns="true">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
