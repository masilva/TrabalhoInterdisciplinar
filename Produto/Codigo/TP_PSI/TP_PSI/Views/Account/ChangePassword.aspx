<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TP_PSI.Models.ChangePasswordModel>" %>

<asp:Content ID="changePasswordTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Alterar Senha
</asp:Content>

<asp:Content ID="changePasswordContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Alterar senha</h2>
    <p>
        Utilize o formulário abaixo para alterar sua senha.
    </p>
    <p>
        Novas senhas são obrigados a ter um mínimo de <%: ViewData["PasswordLength"] %> caracteres.
    </p>

    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true, "Alteração de senha não foi bem sucedida. Por favor, corrija os erros e tente outra vez.")%>
        <div>
            <fieldset>
                <legend>Informações da Conta</legend>
                
                <div class="editor-label">Senha antiga</div>
                <div class="editor-field">
                    <%: Html.PasswordFor(m => m.OldPassword) %>
                    <%: Html.ValidationMessageFor(m => m.OldPassword) %>
                </div>
                
                <div class="editor-label">Nova senha</div>
                <div class="editor-field">
                    <%: Html.PasswordFor(m => m.NewPassword) %>
                    <%: Html.ValidationMessageFor(m => m.NewPassword) %>
                </div>
                
                <div class="editor-label">Confirme a nova senha</div>
                <div class="editor-field">
                    <%: Html.PasswordFor(m => m.ConfirmPassword) %>
                    <%: Html.ValidationMessageFor(m => m.ConfirmPassword) %>
                </div>
                
                <p>
                    <input type="submit" value="Alterar senha" />
                </p>
            </fieldset>
        </div>
    <% } %>
</asp:Content>
