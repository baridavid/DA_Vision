<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarEvento.aspx.vb" Inherits="ProyectoDesarrollo.RegistrarEvento" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <title></title>
    <script>
        $(function () {
            $("#TextBox2").datepicker(
            {
            dateformat: "dd/mm/yyyy",
            dayNamesMin : [ "Do","Lu","Do","Ma","Mi","Ju","Vi","Sa" ],
            monthNames: [ "Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre" ],
            minDate:new Date(2013,5,25)

            }
            
            );
        });
  </script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="NOmbre"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Fecha Inicio"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Fecha Fin"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Estado"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Registrar Evento" />
        <asp:Label ID="l_mensaje" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
