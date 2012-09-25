<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TP_PSI.Models.Hospital>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Gerenciamento de Hospitais
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Hospitais</h2>

    <% using (Html.BeginForm()) { %>
        <p>
		    <%= Html.TextBox("Pesquisa", "Pesquisa")%>
            <input type="submit" value="Buscar" />		    
        </p>
    <% } %>
        
    <div>        
    </div>

    <table>
        <tr>
            <th>
                Codigo
            </th>
            <th>
                Hospital
            </th>
            <th>
                Endereço
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: item.HospitalId %>
            </td>
            <td>
                <%: item.NomHosp %>
            </td>
            <td>
                <%: item.Ender %>
            </td>
            <td>
                <%: Html.ActionLink(" Editar ", "Edit", new { id=item.HospitalId }) %> |
                <%: Html.ActionLink(" Detalhes ", "Details", new { id=item.HospitalId })%> |
                <%: Html.ActionLink(" Apagar ", "Delete", new { id=item.HospitalId })%>
            </td>
        </tr>
    
    <% } %>

    </table>   
    <p>
        <%: Html.ActionLink("Novo Hospital", "Create") %>
    </p>
</asp:Content>

