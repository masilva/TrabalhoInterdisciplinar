<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TP_PSI.Models.Medico>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Gerenciamento de Médicos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Médicos</h2>

     <% using (Html.BeginForm()) { %>
        <p>
		    <%= Html.TextBox("Pesquisa", "Pesquisa")%>
            <input type="submit" value="Buscar" />		    
        </p>
    <% } %>

    <table>
        <tr>            
            <th>
                Codigo
            </th>
            <th>
                Médico
            </th>
            <th>
                Especialidade
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>            
            <td>
                <%: item.CodMed %>
            </td>
            <td>
                <%: item.NomMed %>
            </td>
            <td>
                <%: item.DcrEspec %>
            </td>
            <td>
                <%: Html.ActionLink(" Editar ", "Edit", new { id=item.CodMed }) %> |
                <%: Html.ActionLink(" Detalhes ", "Details", new { id=item.CodMed })%> |
                <%: Html.ActionLink(" Deletar ", "Delete", new { id=item.CodMed })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Novo Médico", "Create") %>
    </p>

</asp:Content>

