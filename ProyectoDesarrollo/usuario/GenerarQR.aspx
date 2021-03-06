﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GenerarQR.aspx.vb" Inherits="ProyectoDesarrollo.GenerarQR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="system/css/css.css" type="text/css" media="screen" charset="utf-8"/>
<link rel="stylesheet" href="system/css/reset.css" type="text/css" media="screen" charset="utf-8"/>
<link href="system/css/wufo/structure.css" rel="stylesheet" type="text/css" media="screen" charset="utf-8"> 
<link href="system/css/wufo/form.css" rel="stylesheet" type="text/css" media="screen" charset="utf-8">
<link href="system/css/wufo/theme.css" rel="stylesheet" type="text/css" media="screen" charset="utf-8">
<script type='text/javascript' src="system/funciones.js" ></script>
<script type="text/javascript" src="system/libs/base64.js"></script>
<script type="text/javascript" src="system/libs/sprintf.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script> 
<script type='text/javascript' src='system/jquery-1.7.2.min.js'></script>
<script type='text/javascript' src="system/script.js"></script> 
<script type="text/javascript" src="system/jquery.qrcode.js"></script> 
<script type='text/javascript' src="system/qrcode.js"></script>
<script type='text/javascript' src="system/jquery.js"></script>  
<script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script> 
    <title>EventSystem</title>
   
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
    </style>
</head>
<body>
    <div class="container">
<div class="header"><img src="system/images/cabecera.png" width="1000" height="144" border="0"/> 
  <!-- end .header --></div>
    <div class="sidebar1">
    <div id="nav">
                        <ul id="menu" >
                           <li><a href="#" class="categoria" >Informacion Personal</a>
                                <ul>
                                	<li><a href="#">&raquo; Ver Perfil</a></li>
                                	<li><span><?php echo anchor('','&raquo; Modificar Perfil'); ?></span></li>
                                </ul>
                          </li>
                          <li><a href="#" class="categoria">Eventos</a>
                                <ul>
                                <li><a>Vision 2013</a></li>
                                <li><a>Google I/O</a></li>
                                <li><a>hola</a>
                                        <ul>
                                        <li><a href="#">Ponencia 1</a></li>
                                        <li><a href="#">Ponencia 2</a></li>
                                        <li><a href="#">Ponencia 3</a></li>
                                        </ul>
                                </li>
                                </ul>
                           </li>
                           <li><a href="#" class="categoria">Horarios</a>
                                <ul>
                                <li><a href="#">&raquo; Etc, Etc.</a></li>
                                </ul>
                           </li>
                           <li><a href="#" class="categoria">Generar Codigo QR</a></a>
                               
                           </li>
                           <li><a href="" class="categoria">Acerca De</a></li>
                           </li>
                           <li><a href="#" class="categoria" >Cerrar Sesion</a></li>
                           
                    </ul>
      </div>
    
<!-- end .sidebar1 --></div>

<div class="content">
<div id="container" class="ltr">
			<form id="form1" runat="server">
    <div>
    <h1>Genera de tu codigo QR!!</h1>
        <p>
            <table style="width:91%;">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        Nombre : </td>
                    <td class="style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    <td class="style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Apellido paterno: </td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Apellido materno:</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        DNI</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Button ID="Button1" runat="server" Text="Generar Codigo QR" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                     <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>&nbsp;</p>


        <div style="display:none" id="output"></div>
    
    
    <canvas id="micanvas"> </canvas>
    <fieldset>
      <legend><b>SELECCIONA EL TIPO DE IMAGEN Y EL RESULTADO SE GENERARA ABAJO<br />
      (Puede guardar la imagen o generar un pdf)</b>
      </legend>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <button class="css3button2" id="png">Generar QR </button>
      
      
      
      <a class="css3button" href="javascript:generarPDF()">GENERAR PDF</a>
     
   
      <a class="css3button" href="javascript:generarPDF2()">GENERAR PDF</a>  <br/>
     
    </fieldset>
    <br />
    <br />
  <img src="" id="laimagen"/> </div>
    </div>




    </form>
	
			
			</div><!--container-->
<!-- end .content --></div>

<div class="sidebar2">
	<img src="system/images/buho.jpg" border="0"/>     
</div>

	 <div class="footer">
	   <img src="system/images/pie.png" style="position:absolute; left:0px;" width="1000" height="72"/>
	 </div>
<!-- end .container --></div>
 <script type="text/javascript">



     jQuery(function () {


         var nombre = $("#TextBox1").val();
         var apepat = $("#TextBox2").val();
         var apemat = $("#TextBox3").val();
         var dni = $("#TextBox4").val();
         // var cod = $("#cod").val();
         jQuery('#output').qrcode(nombre + " " + apepat + " " + apemat + "%&" + dni + "%&");
     })
</script> 
<script type="text/javascript">

    var canvas = document.getElementById("micanvas");


    var img = document.getElementById("laimagen");




    var png = document.getElementById("png");

    png.addEventListener("click", function () {
        img.src = canvas.toDataURL("image/png");
    }, false);



    var jpeg = document.getElementById("jpeg");

    jpeg.addEventListener("click", function () {
        img.src = canvas.toDataURL("image/jpeg");
    }, false);


</script>
</body>
</html>
