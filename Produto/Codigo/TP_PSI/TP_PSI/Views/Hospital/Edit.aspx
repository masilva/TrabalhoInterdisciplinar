<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.Hospital>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Editar</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Campos</legend>
            
            <div class="display-label">Codigo</div>
            <div class="display-field">
                <%: Html.TextBoxFor(model => model.HospitalId, new { disabled = "true" } )%>
                <%: Html.ValidationMessageFor(model => model.HospitalId)%>
            </div>

            <div class="display-label">Hospital</div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NomHosp) %>
                <%: Html.ValidationMessageFor(model => model.NomHosp) %>
            </div>
            
            <div class="display-label">Endereço</div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Ender) %>
                <%: Html.ValidationMessageFor(model => model.Ender) %>
            </div>
            
            <p>
                <input type="submit" value="Confirmar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Retornar para lista", "Index") %>
    </div>

</asp:Content>

