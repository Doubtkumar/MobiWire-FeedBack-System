<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

  
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>
<% response.setHeader("Cache-Control","no-cache"); %>
<% response.setHeader("Cache-Control","no-store"); %>
<% response.setHeader("Cache-Control","must-revalidate"); %>
<% response.setHeader("pragma", "no-cache"); %>
<% response.setHeader("Expires", "0"); %>
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Mobile Programming</h3>
            </div>
				
            <ul class="list-unstyled components">
                <p>Welcome To Mobile Programming llc</p>
                
                <li class="active">
                    <a >Do Login For Next Page</a>
                    
                </li>
                
                 <li>
                    <a href="<spring:url value="toAdmin"/>">Admin-Login</a>
                </li>
               
               	
                 <li class="active">
                    <a href="<spring:url value="log"/>">User-Login</a>
                </li>
            </ul>
			
			
			 <ul class="list-unstyled CTAs">
                    <li><a href="#" class="download">Close</a></li>
                   
                </ul>
          
        </nav>

        <!-- Page Content Holder -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse container" id="navbarSupportedContent">
                    	
						 
						 
                        <ul class="nav navbar-nav ml-auto">
                           
                        </ul>
                    </div>
                </div>
            </nav>
            

                         <header class="col-lg-4 container mt-4">
                                <h1>User Login..</h1>
                         </header>
                <br><br>
                <div class="col-lg-4 container jumbotron ">
					
					
                     <form action="login" class="form-group " method="post">
                    
                        <input class="form-control" type="text" name="username" placeholder="username"></input>
                                 <br>
                                 <input class="form-control" type="password" name="password" placeholder="password"></input>
                                 <br>
                                 <input class="btn-warning" type="submit"></input>
                    
                   </form>
               
                
                  <%--    <br> <br>
                     
                    <a class="col-lg-4 container" href="<spring:url value="show"/>"><button >View Group Dashboard</button></a>
                    <br>
                </div>

     --%>
     
    

        </div>
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
</body>

</html>