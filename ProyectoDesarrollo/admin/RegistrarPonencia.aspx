﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarPonencia.aspx.vb" Inherits="ProyectoDesarrollo.RegistrarPonencia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" media="screen" href="css/reset.css" />
<link rel="stylesheet" media="screen" href="css/grids.css" />
<link rel="stylesheet" media="screen" href="css/style.css" />
<link rel="stylesheet" media="screen" href="css/jquery.uniform.css" />
<link rel="stylesheet" media="screen" href="css/themes/lightblue/style.css" />

<!-- jQplot CSS -->
<link rel="stylesheet" media="screen" href="lib/jqplot/jquery.jqplot.min.css" />
<!-- jQplot CSS END -->
    <title></title>
</head>
<body style="overflow: hidden;">
 
    <div id="loading"> 

        <script type = "text/javascript">
            document.write("<div id='loading-container'><p id='loading-content'>" +
                           "<img id='loading-graphic' width='16' height='16' src='images/ajax-loader-eeeeee.gif' /> " +
                           "Loading...</p></div>");
        </script> 

    </div> 

    <div id="wrapper">
        <header>
            <h1><a href="http://vivantdesigns.com">Administrador</a></h1>
            <nav>
				<ul id="main-navigation" class="clearfix"> 
					<li class="dropdown active"> 
						<a href="#a">active item</a> 
						<ul> 
							<li> 
								<a href="#aa">menu item</a> 
							</li> 
							<li class="dropdown"> 
								<a href="#ab">menu item</a> 
								<ul> 
									<li class="current"><a href="#">menu item</a></li> 
									<li><a href="#aba">menu item</a></li> 
									<li><a href="#abb">menu item</a></li> 
									<li><a href="#abc">menu item</a></li> 
									<li><a href="#abd">menu item</a></li> 
								</ul> 
							</li> 
							<li class="dropdown"> 
								<a href="#">menu item</a> 
								<ul> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
								</ul> 
							</li> 
							<li class="dropdown"> 
								<a href="#">menu item</a> 
								<ul> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
								</ul> 
							</li> 
						</ul> 
					</li> 
					<li> 
						<a href="#">menu item</a> 
					</li> 
					<li class="dropdown"> 
						<a href="#">menu item</a> 
						<ul> 
							<li class="dropdown"> 
								<a href="#">menu item</a> 
								<ul> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
								</ul> 
							</li> 
							<li class="dropdown"> 
								<a href="#">menu item</a> 
								<ul> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
								</ul> 
							</li> 
							<li class="dropdown"> 
								<a href="#">menu item</a> 
								<ul> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
								</ul> 
							</li> 
							<li class="dropdown"> 
								<a href="#">menu item</a> 
								<ul> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
									<li><a href="#">menu item</a></li> 
								</ul> 
							</li> 
						</ul> 
					</li> 
					<li class="dropdown"> 
                        <a href="#">Themes</a> 
                        <ul>
                            <li><a href="dashboard.html">Lightblue</a></li> 
                            <li><a href="gray.html">Gray</a></li> 
                            <li><a href="dark.html">Dark</a></li> 
                        </ul> 
					</li>	
                    <li class="fr dropdown"> 
                        <a href="#" class="with-profile-image"><span><img src="images/profile-image.png" /></span>Administrator</a> 
                        <ul> 
                            <li><a href="#">Settings</a></li> 
                            <li><a href="#">Users</a></li> 
                            <li><a href="#">Groups</a></li> 
                            <li><a href="#">Signout</a></li> 
                        </ul>
                    </li> 
				</ul> 
            </nav>
        </header>
        
        <section>
            <!-- Sidebar -->

                <aside>
                <nav>
                    <ul>
                        <li class="current"><a href="#">Registrar</a></li>
                         <li><a href="RegistrarPonencia.aspx">Registrar Ponencia</a></li>
                        <li><a href="RegistrarExpositor.aspx">Registrar Expositor</a></li>
                        <li><a href="RegistrarEvento.aspx">Registrar Evento</a></li>
                    </ul>
                </nav>
                <nav>
                    <h2>Mantener</h2>
                    <ul>
                        <li><a href="MantenerPonencia.aspx">Mantener Ponencia</a></li>
                        <li><a href="MantenerExpositor.aspx">Mantener Expositor</a></li>
                        <li><a href="MantenerEvento.aspx">Mantener Evento</a></li>
                    </ul>
                </nav>
            </aside>

            <!-- Sidebar End -->

            <section>
                <header class="container_12 clearfix">
                    <div class="grid_12">
                        <h1>Mantener Ponencia</h1>
                    </div>
                </header>
              <section class="container_12 clearfix">
                
                <section class="grid_12"> 
                        <div class="message info">
                        

                       <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Evento"></asp:Label>
        <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem>Seleccione</asp:ListItem>
            <asp:ListItem>Vision 2013</asp:ListItem>
            <asp:ListItem>Google I/o</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Ingrese el evento"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Fecha de inicio :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Ingrese Fecha de inicio" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Fecha de fin :"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Ingrese fecha de fin" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Nombre de ponencia :"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Ingrese nombre de ponencia" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Descripcion :"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Height="100px" Width="300px" MaxLength="10" Columns="50" Rows="12" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Ingrese una descripcion" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Tipo :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>------</asp:ListItem>
            <asp:ListItem Value="1">Conferencia</asp:ListItem>
            <asp:ListItem Value="2">Taller</asp:ListItem>
            <asp:ListItem Value="3">Seminario</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Dirigido a :"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem Value="1">Ing.Sistemas</asp:ListItem>
            <asp:ListItem Value="2">Ing.Industrial</asp:ListItem>
            <asp:ListItem Value="3">Ing.Civil</asp:ListItem>
            <asp:ListItem Value="4">Arquitectura</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList3" 
            EnableTheming="False"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Estado :"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem Value="1">Sin contratiempos</asp:ListItem>
            <asp:ListItem Value="2">Cancelada</asp:ListItem>
            <asp:ListItem Value="3">Eliminada</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList5"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Ambiente :"></asp:Label>
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>Selecciona</asp:ListItem>
            <asp:ListItem>Aula</asp:ListItem>
            <asp:ListItem>Laboratorio</asp:ListItem>
            <asp:ListItem>Coliseo</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList6"></asp:RequiredFieldValidator>
        <br />
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
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList7"></asp:RequiredFieldValidator>
    
        <br />
    
        <br />
        <asp:Label ID="Label12" runat="server" Text="Capacidad"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
    
        <br />
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Registrar Ponencia" />
    
        <asp:Label ID="l_mensaje" runat="server" Text=""></asp:Label>
    
    </div>
    </form>




                        </div>
                    </section>
              </section>
                <footer class="container_12 clearfix">
                    <div class="grid_12">
                    </div>
                </footer>
            </section>

            <!-- Main Section End -->
        </section>
    </div>
    
    <!-- MAIN JAVASCRIPTS -->
    
    <script src="js/jquery.js"></script>
    <script>        window.jQuery || document.write("<script src='js/jquery.min.js'>\x3C/script>")</script>
    <script type="text/javascript" src="js/jquery.tools.min.js"></script>
    <script type="text/javascript" src="js/jquery.uniform.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/PIE.js"></script>
    <script type="text/javascript" src="js/ie.js"></script>
    <![endif]-->

    <script type="text/javascript" src="js/global.js"></script>
    <!-- MAIN JAVASCRIPTS END -->

    <!-- LOADING SCRIPT -->
    <script>
        $(window).load(function () {
            $("#loading").fadeOut(function () {
                $(this).remove();
                $('body').removeAttr('style');
            });
        });
    </script>
    <!-- LOADING SCRIPT -->
    
    <!-- jQplot SETUP -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/jqplot/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript" src="lib/jqplot/jquery.jqplot.min.js"></script>
    <script type="text/javascript" src="lib/jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
    <script type="text/javascript" src="lib/jqplot/plugins/jqplot.barRenderer.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var line1 = [1, 4, 9, 16];
            var line2 = [25, 12.5, 6.25, 3.125];
            var line3 = [2, 7, 15, 30];
            var plot2 = $.jqplot('chart2', [line1, line2, line3], {
                show: true,
                legend: { show: true, location: 'ne', xoffset: 0 },
                seriesDefaults: {
                    renderer: $.jqplot.BarRenderer,
                    rendererOptions: { barPadding: 8, barMargin: 10, shadowDepth: 2 }
                },
                series: [
                { label: 'Profits' },
                { label: 'Expenses' },
                { label: 'Sales' }
            ],
                axes: {
                    xaxis: {
                        renderer: $.jqplot.CategoryAxisRenderer,
                        ticks: ['1st Qtr', '2nd Qtr', '3rd Qtr', '4th Qtr']
                    },
                    yaxis: { min: 0 }
                }
            });
        });
    </script>
    <!-- jQplot SETUP END -->

</body>
</html>
