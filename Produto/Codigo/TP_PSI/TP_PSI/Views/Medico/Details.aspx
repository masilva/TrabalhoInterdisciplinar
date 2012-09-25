<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.Medico>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Detalhes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Detalhes</h2>

    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">Codigo</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.CodMed, new { disabled = "true" })%></div>
        
        <div class="display-label">Médico</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.NomMed, new { disabled = "true" })%></div>
        
        <div class="display-label">Especialidade</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.DcrEspec, new { disabled = "true" })%></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Editar", "Edit", new { id=Model.CodMed }) %> |
        <%: Html.ActionLink("Retornar para lista", "Index") %>
    </p>

</asp:Content>

