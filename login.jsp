<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">  
      <link rel="stylesheet" href="css/loginstyle.css"> 
  
 
</head>
<body>

    <div class="login-page bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                  
                    <div class="bg-light shadow rounded">
                        <div class="row">
                        
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-5 ps-0 d-none d-md-block">
                                <div class="form-right h-100  text-white text-center pt-5">
                                <img src="images/vlogo.png" width="370px" height="350px"  /> </a>
                                </div>
                            </div>
                            <div class="col-md-5 pe-0">
                                <div class="form-left h-100 py-5 px-5">
                                    <form action="LoginServlet" method="post" class="row g-4 card">
                                            <div class="col-12">
                                                <label></label>
                                                <div class="input-group">
                                                    <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
                                                         <input type="text" class="login__input" id="username" name="user" placeholder="User name / Email" required> <span class="text-danger">*</span>  
                                                     </div>
                                            </div>

                                            <div class="col-12">
                                                <label></label>
                                                <div class="input-group">
                                                    <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>
	                                                   <input type="password" class="login__input" id="psw" name="password" placeholder="Password" required><span class="text-danger">*</span>
	                                             </div>
                                            </div>
                                            <div class="col-12">
	                                            <button class="button login__submit">
					                                  <span class="button__text">Log In Now</span>
					                                   <i class="button__icon fas fa-chevron-right"></i>
				                                 </button>	
				                                                                  
				                             </div>
                                           <p style="color:red" id="error"></p>    
                                    </form>
                                    
                                        <% String errorMsg = (String) request.getAttribute("errorMsg");
									         if(errorMsg != null){%>
									    <script>
									        document.getElementById("error").innerHTML=("<%= errorMsg %>");
									    </script>
									    <% } %> 
                                </div>
                                <div class="col-md-1">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
     
</body>
</html>