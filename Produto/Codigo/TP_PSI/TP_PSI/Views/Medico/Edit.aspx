<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.Medico>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Editar</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Campos</legend>
            
            <div class="editor-label">Codigo</div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.CodMed, new { disabled = "true" })%>
                <%: Html.ValidationMessageFor(model => model.CodMed) %>
            </div>
            
            <div class="editor-label">Médico</div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NomMed) %>
                <%: Html.ValidationMessageFor(model => model.NomMed) %>
            </div>
            
            <div class="editor-label">Especialidade</div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.DcrEspec) %>
                <%: Html.ValidationMessageFor(model => model.DcrEspec) %>
            </div>
            
            <p>
                <input type="submit" value="Confirme" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Retornar para lista", "Index") %>
    </div>

</asp:Content>

