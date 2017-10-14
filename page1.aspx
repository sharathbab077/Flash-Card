<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="flashcard.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <script type="text/javascript">

        
        var wordlist = [];
        function funcclicke2(a) {
            
            var c = document.getElementById("l").innerHTML;
           // alert(c);
            var b;
            
            b= Number(c);
            lentext = wordlist.length;
            var m = 1;
            var f = 1;
                //chekcing if the word is already being clicked
                for (i = 0; i <= lentext; i++) {
                    if (wordlist[i] == a) {
                        f = 2;
                        break;
                    }
              }
                if (f == 1) {
                    //used to increment the counter
                    b = b + 1;
                    //alert(b);
                    document.getElementById("l").innerHTML = b;
                    wordlist.push(a);

                   
                }

                var toalcardsindb = document.getElementById('<%= HiddenField2.ClientID%>').value;
                var svalue = $('#l').text();
                console.log(svalue);
                var countr = b;
                var countr = Number(svalue);
                console.log(countr);
                var c = countr;
                countr = (countr / toalcardsindb) * 100;
                //countr = countr * 10;
               
                countr = countr.toString() + "%";
                //int countr= (int)svalue;
                //  console.log($('#progressbar').val());
               $('.progress-bar').css('width', countr);
                
                
               console.log(countr);
                
                
                toalcardsindb = parseInt(toalcardsindb);
                if (c == toalcardsindb ) {

                    value = '<%=updateporgressbarval()%>';
                    window.location.href = "lastpage.aspx";
                }
            

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
    

    <form id="form1" runat="server">
    


  <!-- Header
   ================================================== -->
  <header id="home">

    <nav id="nav-wrap">

      <a class="mobile-btn" href="#nav-wrap" title="Show navigation">Show navigation</a>
      <a class="mobile-btn" href="#" title="Hide navigation">Hide navigation</a>

      <ul id="nav" class="nav">
        
          <li class="current"><a href="index.aspx">Home</a></li>

        
        <li><a class="smoothscroll" href="#info">Cards</a></li>
        
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

   <div class="row education">
        <div class="three columns header-col">
                    
            <img class="profile-pic" src="images/profilepic.png" alt="" />
        </div>
                    
        <div class="nine columns header-col">
            <h1><p>
            Hey !! Your overall progress 
            </p></h1>
            
            <asp:HiddenField ID="pr" runat="server"></asp:HiddenField>
            <asp:HiddenField ID = "HiddenField1" runat="server" /> 
            <asp:HiddenField ID = "HiddenField2" runat="server" /> 
           
            
            <div class="progress" >
              
                <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
      
    </div>
            </div>
       
       <div class="container">
        <div class="row">
            <div class="col-md-4" style="float:left">
                
           <asp:Button ID="Button1" runat="server" Text="ADD" Height="50" Width="100px" OnClick="Button1_Click"/>
        
                    </div>
            <div class="col-md-4" style="float:left">
                
                <asp:Button ID="Button2" runat="server" Text="DELETE" Height="50px" Width="100px" OnClick="Button2_Click" />
                
                    </div>
            <div class="col-md-4" style="float:left">
                
                <asp:Button ID="Button3" runat="server" Text="SHOW CARDS"  Height="50" Width="150px" OnClick="Button3_Click" />
            </div>
                </div>
           </div> 
   </div>

   </div>


   
      <asp:Label ID="l" Text="0" runat="server" ></asp:Label>


<div class="container">
 <div class="table-responsive">
        <asp:Table class="table" ID="Table1" cellspacing="10" runat="server" ></asp:Table>

   </div>
</div>

   
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






