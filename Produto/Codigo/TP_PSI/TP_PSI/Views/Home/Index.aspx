<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    <p>        
        Trabalho Integrado
    </p>
    <p>   
        -Primeira entrega.
    </p>
        -Implementação do caso de uso "Gerenciar Médicos".
    <p>
        -Implementação do caso de uso "Gerenciar Hospitais".
    </p>
</asp:Content>
