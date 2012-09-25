<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.Hospital>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Detalhes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Detalhes</h2>

    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">Codigo</div>
        <div class="display-field"> <%: Html.TextBoxFor(model => model.HospitalId, new { disabled = "true" } )%></div>
        
        <div class="display-label">Hospital</div>
        <div class="display-field"> <%: Html.TextBoxFor(model => model.NomHosp, new { disabled = "true" } )%></div>
        
        <div class="display-label">Endereço</div>
        <div class="display-field"> <%: Html.TextBoxFor(model => model.Ender, new { disabled = "true" } )%></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Editar", "Edit", new { id=Model.HospitalId }) %> |
        <%: Html.ActionLink("Retornar para Lista", "Index") %>
    </p>

</asp:Content>

