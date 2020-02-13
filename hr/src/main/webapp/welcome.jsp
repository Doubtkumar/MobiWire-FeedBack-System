<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

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

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
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
            	<li class="active">
                    <a class="text-capitalize" >Welcome ${user.username} </a>
                    
                </li>
               
                <p>Welcome To Mobile Programming llc</p>
                
                
            </ul>
			
			
			  <ul class="list-unstyled CTAs">
                    <li><a href="login.jsp" class="download">Logout</a></li>
                   
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

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            

                         <header class="col-lg-4 container mt-4">
                                <h1>welcome ${user.username}</h1>
                         </header>
                <br><br>
                <div class=" container">
                <form action="/feedbackSubmit">
                
				<%
					try{
						String query1 = "select * from question";
						Class.forName("com.mysql.jdbc.Driver").newInstance();
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","welcome@1234");
						Statement st1= con.createStatement();
						Statement st2= con.createStatement();
						Statement st3= con.createStatement();
						ResultSet rs1= st1.executeQuery(query1);
						%>
						<%-- <input type="text" name="username" hidden value='${user.username}'></input> --%>
						
						<input type="text" name="userId" hidden value="${user.id}"></input>
						
						
						<ol>
						<%
						int counter=0;
						while(rs1.next()){
							
							%>
							 
								<li >
								
									<h2><%= rs1.getString("question") %></h2>
									<input type="text" hidden value='<%=rs1.getInt("question_id") %>' name="data[<%= counter %>].questionid">
									<input type="text" hidden value='<%=rs1.getString("question") %>' name="data[<%= counter %>].question">
									
								</li>
								<ol type="a">
							<%
							 int id= rs1.getInt("question_id");	
							 String query2 = "select type from question where question_id="+id;
							 ResultSet rs2 = st2.executeQuery(query2);
							 rs2.next();
							 String getType= rs2.getString(1);
							 String query3= "select options from answers_option where question_question_id="+id;
							 ResultSet rs3 = st3.executeQuery(query3);
							 switch(getType){
							 	case "radio":
							 		while(rs3.next()){
							 		%>
							 			<li style="padding:5px">
											<input style="margin:3px" type="radio" required name="data[<%= counter %>].answer" value='<%= rs3.getString("options") %>' ></input> <%= rs3.getString("options") %> 
										</li>
							 		<%
	
							 		}
							 		
							 		break;
							 	case "dropdown":
							 		
							 		%>
								 		<select name="data[<%= counter %>].answer" required>
							 				<option value="" >select value</option>
						 				<%
						 					while(rs3.next()){		
						 				%>
						 						<option value='<%= rs3.getString("options") %>'><%= rs3.getString("options") %></option>
						 			   <% 
						 					}
						 				%>
						 				</select>
						 				<%
						 				break;
							 	case "text" : 
							 		%>
						 			<input type="text" required placeholder="write here" name="data[<%= counter %>].answer"></input>
						 			<% 
						 			break;
							 	case "textarea" :
							 		%>
							 			<textarea type="text" required name="data[<%= counter %>].answer"></textarea>
							 		<%
							 	}%>
													
						</ol><br><br>
							
						<%
						counter++;
						}
						%>
					</ol>
				<% 
					}
				catch(Exception ex){
					ex.printStackTrace();
				}
				
				%>
                
                
   <br><br>
   			<input type="submit" ></input>
			
			
   	</form>

        </div>
    </div>


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