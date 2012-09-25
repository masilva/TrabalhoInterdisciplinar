<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.Hospital>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Apagar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Apagar</h2>

    <h3>Tem certeza de que deseja apagar este hospital?</h3>
    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">Codigo</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.HospitalId, new { disabled = "true" } )%></div>
        
        <div class="display-label">Hospital</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.NomHosp, new { disabled = "true" } )%></div>
        
        <div class="display-label">Endereço</div>
        <div class="display-field"><%: Html.TextBoxFor(model => model.Ender, new { disabled = "true" } )%></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Confirmar" /> |
		    <%: Html.ActionLink("Retornar para lista", "Index") %>
        </p>
    <% } %>

</asp:Content>

