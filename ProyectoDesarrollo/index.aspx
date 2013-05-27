<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="ProyectoDesarrollo.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>photo_style_two</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="index/css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="index/js/modernizr-1.5.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
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
        <h1>Bienvenidos</h1>
        <p><span style="color: rgb(93, 93, 93); font-family: arial; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(252, 253, 244); display: inline !important; float: none;">
            EventSystem nos ofrece un nuevo sistema de gestión de eventos vía web. Con él 
            podremos inscribirnos a diferentes eventos realizados en la Facultad de 
            Ingenieria y arquitectura de la USMP, ver horarios, consultar detalles de los 
            eventos y mucho mas.</span></p>
        <h3>Browser Compatibility</h3>
        <p>This template has been tested in the following browsers:</p>
        <ul>
          <li>Internet Explorer 8</li>
          <li>Internet Explorer 7</li>
          <li>FireFox 10</li>
          <li>Google Chrome 17</li>
        </ul>
      </div>
    </div>
    <footer>
      <p>Copyright &copy; :) | <a href="#">Sistema de Gestion de Eventos</a></p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="index/js/jquery.js"></script>
  <script type="text/javascript" src="index/js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="index/js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="index/js/image_fade.js"></script>
  <script type="text/javascript">
      $(document).ready(function () {
          $('ul.sf-menu').sooperfish();
      });
  </script>
    </form>
</body>
</html>
