<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="flashcard.index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<!--- Basic Page Needs
			================================================== -->
		<meta charset="utf-8">
		<title>Flash Card App</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- Mobile Specific Metas
			================================================== -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
			crossorigin="anonymous">
		<!-- CSS
			================================================== -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!--Import materialize.css-->
		<link rel="stylesheet" href="css/default.css">
		<link rel="stylesheet" href="css/layout.css">
		<link rel="stylesheet" href="css/media-queries.css">
		<link rel="stylesheet" href="css/magnific-popup.css">
		<!-- Script
			================================================== -->
		<script src="js/modernizr.js"></script>
		
		<!-- Favicons
			================================================== -->
		<link rel="shortcut icon" href="favicon.png">
	</head>
	<body>
		<form id="form1" runat="server">
			<header id="home">
				<nav id="nav-wrap">
					<a class="mobile-btn" href="#nav-wrap" title="Show navigation">Show navigation</a>
					<a class="mobile-btn" href="#" title="Hide navigation">Hide navigation</a>
					<ul id="nav" class="nav">
						<li class="current"><a class="smoothscroll" href="#home">Home</a></li>
						<li><a class="smoothscroll" href="#info">About</a></li>
						<li><a class="smoothscroll" href="#project">Lessons</a></li>
					</ul>
					<!-- end #nav -->
				</nav>
				<!-- end #nav-wrap -->
				<div class="row banner">
					<div class="banner-text">
						<h1>
							FLASH CARDS
							<span class="wrapper"></span>
						</h1>
						<hr />
					</div>
				</div>
				<p class="scrolldown">
					<a class="smoothscroll" href="#about"><i class="icon-down-circle"></i></a>
				</p>
				<hr/>
			</header>
			<!-- Header End -->
			<!-- Info Section
				================================================== -->
			<section id="info">
				<div class="container">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec efficitur ligula. Sed at elit vitae nulla consectetur finibus. Vestibulum ut felis eu lectus porttitor sagittis. Vivamus nec molestie nisi, ac accumsan ipsum. Integer luctus nunc et accumsan tincidunt. Duis sit amet dolor viverra, tincidunt ex eget, faucibus odio. Praesent libero metus, feugiat et dignissim eget, scelerisque a turpis. Vivamus tempus scelerisque laoreet. Sed magna nisl, varius vitae facilisis sit amet, gravida eget orci.
						Duis mollis augue ac mattis ullamcorper. Praesent purus velit, hendrerit id enim vel, pulvinar posuere est. Suspendisse id nunc velit. Nunc venenatis laoreet interdum. Vestibulum elementum, neque ac porta tristique, eros enim condimentum nisl, suscipit aliquet est nulla in lacus. Mauris nunc felis, vulputate at nibh sit amet, tristique suscipit justo. Mauris dictum in sem vel lacinia. Ut ut ultricies est. Nunc congue ligula non rutrum aliquet. Sed at leo vitae lectus aliquet gravida sit amet id purus
					</p>
				</div>
			</section>
			<!-- Resume Section End-->
			<!-- project Section
				================================================== -->
			<section id="project">
				<h1><b>
					ALL LESSONS
					</b>
				</h1>
				<div class="row">
					<div class="twelve columns collapsed">
						<!-- project-wrapper -->
						<div id="project-wrapper" class="bgrid-quarters s-bgrid-thirds cf">
							<div class="columns project-item">
								<div class="item-wrap">
									<a href="#modal-01" title="">
										<img class="img-responsive alt="" src="images/modal.jpg">
										<div class="overlay">
											<div class="project-item-meta">
												<h5>Finance</h5>
												<p></p>
											</div>
										</div>
										<div class="link-icon"><i class="icon-plus"></i></div>
									</a>
								</div>
							</div>
							<!-- item end -->
							<div class="columns project-item">
								<div class="item-wrap">
									<a href="#modal-02" title="">
										<img class="img-responsive" alt="" src="images/modal.jpg">
										<div class="overlay">
											<div class="project-item-meta">
												<h5>Marketing</h5>
											</div>
										</div>
										<div class="link-icon"><i class="icon-plus"></i></div>
									</a>
								</div>
							</div>
							<!-- item end -->
							<div class="columns project-item">
								<div class="item-wrap">
									<a href="#modal-03" title="">
										<img class="img-responsive" alt="" src="images/modal.jpg">
										<div class="overlay">
											<div class="project-item-meta">
												<h5>Legal</h5>
											</div>
										</div>
										<div class="link-icon"><i class="icon-plus"></i></div>
									</a>
								</div>
							</div>
							<!-- item end -->
							<div class="columns project-item">
								<div class="item-wrap">
									<a href="#modal-04" title="">
										<img class="img-responsive" alt="" src="images/modal.jpg">
										<div class="overlay">
											<div class="project-item-meta">
												<h5>Product Development</h5>
											</div>
										</div>
										<div class="link-icon"><i class="icon-plus"></i></div>
									</a>
								</div>
							</div>
						</div>
						<!-- project-wrapper end -->
					</div>
					<!-- twelve columns end -->
					<!-- Modal Popup
						--------------------------------------------------------------- -->
					<div id="modal-01" class="popup-modal mfp-hide">
						<div class="description-box">
							<h4>Finance</h4>
							<div class="row">
								<div class="col-md-10">
									<a href="page1.aspx">Accounting 101 and the Things<br> Banks Care About
									</a>
								</div>
								<div class="col-sm-2" style="float:right">
									<asp:Image ID="eye1" runat="server" ImageUrl="~/images/eye.png" />
								</div>
								<div class="col-sm-2">
									<img class="img-responsive" alt="" src="images/stopwatch.png">
								</div>
								<div class="col-sm-4">
									<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-sm-10">
									<a href="https://www.google.com/">Venture Capital and Angel Investment
									</a>
								</div>
								<div class="col-sm-2" style="float:right">
									<asp:Image ID="eye2" runat="server" ImageUrl="~/images/eye.png" />
								</div>
								<div class="col-sm-2">
									<img class="img-responsive" alt="" src="images/stopwatch.png">
								</div>
								<div class="col-sm-4">
									<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-sm-10">
									<a href="https://www.google.com/">Business Modeling and the Art of Making money </a>
								</div>
								<div class="col-sm-2" style="float:right">
									<img src="images/eye.png" id="eye3"/> 
								</div>
								<div class="col-sm-2">
									<img class="img-responsive" alt="" src="images/stopwatch.png">
								</div>
								<div class="col-sm-4">
									<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-sm-10">
									<a href="https://www.google.com/">Job Titles and the Cast of Characters</a>
								</div>
								<div class="col-sm-2" style="float:right">
									<img src="images/eye.png" id="eye4"/> 
								</div>
								<div class="col-sm-2">
									<img class="img-responsive" alt="" src="images/stopwatch.png">
								</div>
								<div class="col-sm-2">
									<asp:Label ID="Label4" runat="server" Text="Label" ></asp:Label>
								</div>
							</div>
						</div>
						<div class="link-box">
							<a class="popup-modal-dismiss">Close</a>
						</div>
					</div>
					<!-- modal-01 End -->
					<div id="modal-02" class="popup-modal mfp-hide">
						<div class="description-box">
							<h4>Marketing</h4>
						</div>
						<div class="link-box">
							<a class="popup-modal-dismiss">Close</a>
						</div>
					</div>
					<!-- modal-02 End -->
					<div id="modal-03" class="popup-modal mfp-hide">
						<div class="description-box">
							<h4>Legal</h4>
						</div>
						<div class="link-box">
							<a class="popup-modal-dismiss">Close</a>
						</div>
					</div>
					<!-- modal-03 End -->
					<div id="modal-04" class="popup-modal mfp-hide">
						<div class="description-box">
							<h4>Product Development</h4>
						</div>
						<div class="link-box">
							<a class="popup-modal-dismiss">Close</a>
						</div>
					</div>
					<!-- modal-04 End -->
				</div>
				<!-- row End -->
			</section>
			<section id="About">
			</section>
			
			<!-- footer
				================================================== -->
			<footer>
				<div class="row">
					<div class="col-md-3" >
						<h5 style="color:white" >FLASH CARD</h5>
					</div>
					<div class="col-md-3">
						<h5 style="color:white">BlackStone LaunchPad</h5>
					</div>
					<div class="col-md-3">
						<h5 style="color:white">SYRACUSE UNIVERSITY</h5>
					</div>
				</div>
				<div class="row">
					<div class="twelve columns">
						<ul class="social-links">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						</ul>
					</div>
					<div id="go-top"><a class="smoothscroll" title="Back to Top" href="#home"><i class="icon-up-open"></i></a></div>
				</div>
			</footer>
			<!-- Footer End-->
			<script type="text/javascript">
                function checkiffinished() {

                    var checkvalue;
                    checkvalue = '<%=checkvisited()%>';
                    window.alert(checkvalue);
                    //Number(checkvalue)
                    console.log(Number(checkvalue));

                    if (Number(checkvalue) == 1) {
                        document.getElementById("eye2").src = "images/icon.png";
                    }
                    else {

                    }

                }


                function getimefinance() {
                    console.log("inside function");

                    var value;

                    value = '<%=gettime()%>';
                    console.log(value);
                    document.getElementById("finance").innerHTML = "value";
                }
				    //document.getElementById("")
			</script>
			<!-- Java Script
				================================================== -->
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
			<script>
                window.jQuery || document.write('<script src="js/jquery-1.10.2.min.js"><\/script>')
			</script>
			<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js"></script>
			<script src="js/jquery.flexslider.js"></script>
			<script src="js/waypoints.js"></script>
			<script src="js/jquery.fittext.js"></script>
			<script src="js/magnific-popup.js"></script>
			<script src="js/init.js"></script>
			<script src="js/doughnut.js"></script>
			<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
			<script type="text/javascript" src="js/materialize.min.js"></script>
		</form>
	</body>
</html>