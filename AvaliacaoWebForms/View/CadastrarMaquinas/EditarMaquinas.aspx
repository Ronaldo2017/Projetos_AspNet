﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarMaquinas.aspx.cs" Inherits="AvaliacaoWebForms.View.CadastrarMaquinas.EditarMaquinas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           
                <div class="container">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <h1>Editar Máquinas</h1>
                        <div class="form-group">
                            <asp:Label ID="lblId" runat="server" Text="ID "></asp:Label>
                            <asp:TextBox ID="txtId" CssClass="form-control" runat="server" Width="91px"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblNome" runat="server" Text="Nome "></asp:Label>
                            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="100" Width="204px"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblDescricao" runat="server" Text="Descrição "></asp:Label>
                            <asp:TextBox ID="txtDescricao" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" />
                            <asp:Button ID="btnAlterar" runat="server" Text="Alterar" CssClass="btn btn-primary" OnClick="btnAlterar_Click"  />
                            <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-primary" OnClick="btnExcluir_Click"    />
                        </div>
<%--                        OnClientClick="return confirm('Alterado com sucesso');" OnClientClick="return confirm('Excuído com sucesso');"--%>
                        <div class="form-group">
                            <asp:LinkButton ID="linkVoltar" runat="server" OnClick="linkVoltar_Click">Voltar</asp:LinkButton>
                        </div>
                    </div>
                </div>
         
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
