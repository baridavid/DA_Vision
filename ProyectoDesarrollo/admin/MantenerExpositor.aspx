<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MantenerEvento.aspx.vb" Inherits="ProyectoDesarrollo.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" media="screen" href="css/reset.css" />
<link rel="stylesheet" media="screen" href="css/grids.css" />
<link rel="stylesheet" media="screen" href="css/style.css" />
<link rel="stylesheet" media="screen" href="css/jquery.uniform.css" />
<link rel="stylesheet" media="screen" href="css/themes/lightblue/style.css" />

<!-- jQplot CSS -->
<link rel="stylesheet" media="screen" href="lib/jqplot/jquery.jqplot.min.css" />
<!-- jQplot CSS END -->


<title>Documento sin título</title>
</head>
<body style="overflow: hidden;">
    <form id="form1" runat="server">
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
                        <h1>Manener Expositor</h1>
                    </div>
                </header>
              <section class="container_12 clearfix">
                
                <section class="grid_12"> 
                        <div class="message info">
                        

                        




                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:dis_eventoConnectionString %>" 
                                ProviderName="<%$ ConnectionStrings:dis_eventoConnectionString.ProviderName %>" 
                                
                                
                                SelectCommand="SELECT cod_exp ,tip_doc, num_doc, nom_exp, ape_pat_exp, ape_mat_exp, pais_exp FROM expositor" 
                                DeleteCommand="DELETE FROM expositor WHERE cod_exp=@cod_exp">
                            </asp:SqlDataSource>
                        

                        

<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" 
                                ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                                DataKeyNames="cod_exp" CellSpacing="3" Width="500px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="cod_exp" HeaderText="cod_exp" ReadOnly="True" 
            SortExpression="cod_exp" />
        <asp:BoundField DataField="tip_doc" HeaderText="tip_doc" 
            SortExpression="tip_doc" />
        <asp:BoundField DataField="num_doc" HeaderText="num_doc" 
            SortExpression="num_doc" />
        <asp:BoundField DataField="nom_exp" HeaderText="nom_exp" 
            SortExpression="nom_exp" />
        <asp:BoundField DataField="ape_pat_exp" HeaderText="ape_pat_exp" 
            SortExpression="ape_pat_exp" />
        <asp:BoundField DataField="ape_mat_exp" HeaderText="ape_mat_exp" 
            SortExpression="ape_mat_exp" />
        <asp:BoundField DataField="pais_exp" HeaderText="pais_exp" 
            SortExpression="pais_exp" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>


                            <br />
                        

                        




                        </div>
                    </section>
              </section>
                <footer class="container_12 clearfix">
                    <div class="grid_12">
                       hola
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
    </form>
</body>
</html>
