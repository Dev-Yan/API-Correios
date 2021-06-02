<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaCep.aspx.cs" Inherits="ConsultarCep.ConsultaCep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consulta | CEP </title>
</head>
<body style="background-color:#f3b033">
    <form id="form1" runat="server">
        <div>
            <header align="center">
                <h1 style="font-family: sans-serif">Consulte seu CEP</h1>
            </header>
        </div>
        <div align="center">
            <label> CEP </label>
            <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
            <asp:Button align="center" ID="btnConsultar" runat="server" Text="Consulte" OnClick="btnConsultar_Click" />
            <div align="center">
                <br />
                <label>Endereço</label>
                <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
                <label>Bairro</label>
                <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
                <br />
                <br />
                <label>Cidade</label>
                <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                <label>UF    </label>
                <asp:TextBox ID="txtUF" runat="server"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
