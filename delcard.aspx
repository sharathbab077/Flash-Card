<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delcard.aspx.cs" Inherits="flashcard.delcard" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<script type="text/javascript">
            fucntion validate(){
                var word = document.getElementById('<%=delword.ClientID %>').value;
                if (word == "") {
                    alert("Enter  word");
                    return false;
                }
                alert("Word is deleted");
            }
		</script>
		<!--- Basic Page Needs
			================================================== -->
		<meta charset="utf-8">
		<title>Sharath Babu Srinivas</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- Mobile Specific Metas
			================================================== -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
		<link rel="stylesheet" href="css/nextpage.css">
		<!-- Script
			================================================== -->
		<script src="js/modernizr.js"></script>
		<!-- Favicons
			================================================== -->
		<link rel="shortcut icon" href="favicon.png">
	</head>
	<body>
		<form id="form2" runat="server">
			<!-- Header
				================================================== -->
			<header id="home">
				<nav id="nav-wrap">
					<a class="mobile-btn" href="#nav-wrap" title="Show navigation">Show navigation</a>
					<a class="mobile-btn" href="#" title="Hide navigation">Hide navigation</a>
					<ul id="nav" class="nav">
						<li class="current"><a href="index.aspx">Home</a></li>
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
			
			<section id="info">
				<div class="row">
				<div class="col-md-5">
					<h1>
						DELETE A  WORD FROM YOUR LIST!!!
					</h1>
		<form>
		<div class="form-group">
		<label for="Word">Word</label>
		<asp:TextBox ID="delword" placeholder="Enter word" class="form-control" runat="server"></asp:TextBox>
		</form>  
		</div>
		<asp:Button ID="delcards" type="submit" class="btn btn-primary" runat="server" Text="Delete card" OnClick="delcards_Click" OnClientClick="return validate();"/>
		</div>
		</section>
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		</form>
	</body>
</html>