<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EventSystem.aspx.vb" Inherits="ProyectoDesarrollo.EventSystem" %>

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
<script type='text/javascript' src='system/jquery-1.7.2.min.js'></script>
<script type='text/javascript' src="system/script.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script> 
    <title></title>


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
			
	<form id="form6" name="form6" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="post" novalidate action="">
		<header id="header" class="info">
		<h2>Bienvenidos! Eventos FIA ! </h2>
		<div>SGE es un proyecto para el curso de DIS enfocado a las necesitades de nuestra facultad.</div>
		</header>
			
		<ul>
		<li id="foli112" class="notranslate first section      ">
		<section>
		<h3 id="title112">
		Bienvenido de nuevo <b></b><br />
		</h3>
		</section>
		</li>
			
			<li id="foli457" class="notranslate section      ">
			<section>
			<h3 id="title457">
			Porfavor, ayudenos a evaluar el Sistema.<br />
			<br />
			¿En términos generales, que le parecio el Sistema?
			</h3>
			</section>
			</li><li id="foli458" class="notranslate       ">
			<label class="desc" id="title458" for="Field458">
			Seleccionar una opción
			</label>
			<div>
			<select id="Field458" name="Field458" class="field select medium" tabindex="1" > 
			<option value="Seleccione" selected="selected">
			Seleccione
			</option>
			<option value="Muy Bueno" >
			Muy Bueno
			</option>
			<option value="Bueno" >
			Bueno
			</option>
			<option value="Regular" >
			Regular
			</option>
			<option value="Malo" >
			Malo
			</option>
			<option value="Muy Malo" >
			Muy Malo
			</option>
			</select>
			</div>
			</li> <li class="buttons ">
			<div>
			
			                    <input id="saveForm" name="saveForm" class="btTxt submit" 
			    type="submit" value="Enviar"
			 /></div>
			</li>
			
			<li class="hide">
			<textarea name="comment" id="comment" rows="1" cols="1"></textarea>
			<input type="hidden" id="idstamp" name="idstamp" value="UMNzPMBJAKJDRS+yIF9KnTpg/3fM+9os4GLiBNShDgc=" />
			</li>
			</ul>
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

</body>
</html>
