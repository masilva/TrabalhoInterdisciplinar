<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.Medico>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Apagar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Apagar</h2>

    <h3>Tem certeza de que deseja apagar este médico?</h3>
    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">Codigo</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.CodMed , new { disabled = "true" } )%></div>
        
        <div class="display-label">Médico</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.NomMed, new { disabled = "true" })%></div>
        
        <div class="display-label">Especialidade</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.DcrEspec, new { disabled = "true" })%></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Confirmar" /> |
		    <%: Html.ActionLink("Retornar para lista", "Index")%>
        </p>
    <% } %>

</asp:Content>

