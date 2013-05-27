<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarParticipante.aspx.vb" Inherits="ProyectoDesarrollo.RegistrarParticipante" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>photo_style_two</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="index/css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="index/js/modernizr-1.5.min.js"></script><
  
</head>
<body>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Even<span class="logo_colour">System</span></a></h1>
          <h2>Sistema de gestion de eventos.</h2>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li class="selected"><a href="index.aspx">Home</a></li>
          <li><a href="about.html">Sobre Nosotros</a></li>
          <li><a href="portfolio.html">Eventos</a></li>
          <li><a href="blog.html">Blog</a></li>
          <li><a href="RegistrarParticipante.aspx">Registrate</a></li>
          <li><a href="Login.aspx">Login</a></li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="content">
        <form id="form1" runat="server">
    <div>
    
    <h2>Registrate!</h2>

        <asp:Label ID="Label1" runat="server" Text="Tipo de documento* :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem Value="1">DNI</asp:ListItem>
            <asp:ListItem Value="2">Pasaporte</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Ingrese un tipo de documento"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Numero de documento* : "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Ingrese el numero de documento"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nombres* : "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Ingrese su nombre"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Apellido Paterno* : "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Ingrese su apellido" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Apellido Materno* : "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Ingrese su apellido" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Telefono Fijo : "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Celular : "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Correo* : "></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Ingrese su correo" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="Ingrese un email valido" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Direccion : "></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Usuario* : "></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Ingrese un usuario" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
        <br />
      
        <br />
        <asp:Label ID="Label11" runat="server" Text="Password* :"></asp:Label>
        <asp:TextBox ID="TextBox11" TextMode="Password" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox11" ControlToValidate="TextBox12" 
            ErrorMessage="El password debe ser el mismo"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox11" ErrorMessage="Ingrese un password"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Confirmar Password *:"></asp:Label>
        <asp:TextBox ID="TextBox12" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="TextBox12" ErrorMessage="Repita el password"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Registrar Participante* "  />
    


        <asp:Label ID="l_mensaje" runat="server" Text=""></asp:Label>
    


    </div>
    </form>
      </div>
    </div>
    <footer>
      <p>Copyright &copy; :) | <a href="#">Sistema de Gestion de Eventos</a></p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
      $(document).ready(function () {
          $('ul.sf-menu').sooperfish();
      });
  </script>
</body>
</html>
