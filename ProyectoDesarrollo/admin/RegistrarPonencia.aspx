<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarPonencia.aspx.vb" Inherits="ProyectoDesarrollo.RegistrarPonencia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Evento"></asp:Label>
        <asp:DropDownList ID="DropDownList7" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Fecha de inicio :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Fecha de fin :"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Nombre de ponencia :"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Descripcion :"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Height="100px" Width="300px" MaxLength="10" Columns="50" Rows="12" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Tipo :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>------</asp:ListItem>
            <asp:ListItem Value="1">Conferencia</asp:ListItem>
            <asp:ListItem Value="2">Taller</asp:ListItem>
            <asp:ListItem Value="3">Seminario</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Dirigido a :"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem Value="1">Ing.Sistemas</asp:ListItem>
            <asp:ListItem Value="2">Ing.Industrial</asp:ListItem>
            <asp:ListItem Value="3">Ing.Civil</asp:ListItem>
            <asp:ListItem Value="4">Arquitectura</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Estado :"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem Value="1">Sin contratiempos</asp:ListItem>
            <asp:ListItem Value="2">Cancelada</asp:ListItem>
            <asp:ListItem Value="3">Eliminada</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Ambiente :"></asp:Label>
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem>Aula</asp:ListItem>
            <asp:ListItem>Laboratorio</asp:ListItem>
            <asp:ListItem>Coliseo</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Cod ambiente :"></asp:Label>
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem>01-101</asp:ListItem>
            <asp:ListItem>01-102</asp:ListItem>
            <asp:ListItem>01-103</asp:ListItem>
            <asp:ListItem>01-104</asp:ListItem>
            <asp:ListItem>01-105</asp:ListItem>
            <asp:ListItem>01-106</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        <asp:Label ID="Label12" runat="server" Text="Capacidad"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Registrar Ponencia" />
    
    </div>
    </form>
</body>
</html>
