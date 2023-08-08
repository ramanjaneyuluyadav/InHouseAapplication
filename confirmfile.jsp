<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vcube</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" >
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <link rel="stylesheet" href="./css/register.css">

    <!-- =======================styles============= -->
    <link rel="stylesheet" href="./css/dashboardstyle.css">
</head>

<body>
    <!--=============================== Navigation ================-->
   <div class="contanier-fluid">
    <div class="row">
    <div class="col-md-2">
    <div class="navigation">
        <ul>
            <li>
                <img src="images/vlogo.png"  width="150px" height="150px">
            </li>

            <li>
                <a href="DashBoardServlet">
                    <span class="icon">
                        <ion-icon name="home-outline"></ion-icon>
                    </span>
                    <span class="title">Dashboard</span>
                </a>
            </li>

            <li>
                <a href="StudentDetailsServlet">
                    <span class="icon">
                        <ion-icon name="people-outline"></ion-icon>
                    </span>
                    <span class="title">Students List</span>
                </a>
            </li>
            <li>
                <a href="./Newstudent.jsp">
                    <span class="icon">
                        <ion-icon name="person-outline"></ion-icon>
                    </span>
                    <span class="title">New Student</span>
                </a>
            </li>

            
            <li>
                <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    <span class="icon">
                        <ion-icon name="log-out-outline"></ion-icon>
                    </span>
                    <span class="title">Logout</span>
                </a>
            </li>
            
        </ul>
    </div>
</div>
<div class="col-md-10">
 <div class="container pt-5 " style="text-align: center;">
        <div class="row">
            <div class="col-md-4 border">
                <h5>REGISTER</h5>
            </div>
            <div class="col-md-4 border">
                <h5>FEE INFORMATION</h5>
            </div>
            <div class="col-md-4 conf">
                <h5>CONFIRMATION</h5>
            </div>
        </div>
    </div>
    
   <div class="container pt-5">
    <div class="row">
        <div class="col-md-3"></div>
      
         <div class="col-md-6">
            <form name="myForm"  method="get" action="StudentDetailsServlet">
            <h5>I confirm that the details which I have given is correct and I'm willing to join in the institute.</h5>
            <input class="form-check-input" type="checkbox" value="" id="checkBox">
            <label class="form-check-label" for="flexCheckDefault">Yes I confirm</label>
            <div style="text-align: right;">
                <button class="btn btn-primary" type="submit"  data-bs-toggle="modal" data-bs-target="#exampleModal2">OK</button>
            </div>
                </form>
        </div>
 
        <div class="col-md-3"></div>
    </div>
   </div>
</div>
</div>
</div>
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog"style=" max-height:85%;  margin-top: 300px; margin-bottom:100px;">
      <div class="modal-content" style="width: 80%;">
                <div class="modal-body">
                   <p>SUCCESSFULLY SUBMIT</p>
                   <a href="StudentDetailsServlet" ><button class="btn btn-warning" > Okay</button></a>
                </div>
       </div>
    </div>
</div>

<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog"style=" max-height:85%;  margin-top: 300px; margin-bottom:100px;">
      <div class="modal-content" style="width: 80%;">
                <div class="modal-body">
                   <p> Are you sure want to Logout?</p>
                   <form action="LogOutServlet" method="post">
                      <input type="submit" name="logout" id="logout" value="Yes" class="btn btn-warning" >
                  </form>
                </div>
       </div>
    </div>
</div>
</body>
</html>