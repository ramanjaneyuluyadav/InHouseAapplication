<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="./css/register.css">

        <!-- =======================styles============= -->
        <link rel="stylesheet" href="./css/dashboardstyle.css">
</head>

<body>
    <!--=============================== Navigation ================-->
    <div class="contanier-fluid">
        <div class="navigation">
            <ul>
                <li>
                    <img src="images/vlogo.png" width="150px" height="150px">
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
                    <a href="./student.jsp">
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
    
        <!-- ================================== Main =================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <div class="search">
                    <label>
                        <input type="text" placeholder="search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>

                <%
					HttpSession session1 = request.getSession();
				    String username = (String) session.getAttribute("username");
				
				%>

                <div >
                 <ion-icon name="person-circle-outline"></ion-icon> <%= username %>
                    
                </div>
            </div>
    <div class="col-md-10">
        <div class="container pt-5  " style="text-align: center;">
            <div class="row">
                <div class="col-md-1 ">
                   
                </div>
                <div class="col-md-2 ">
                    <p class="reg">REGISTER</p>
                </div>
                <div class="col-md-2 ">
                    <img src="images/dashed-line.jpg" height="50px" width="80%" style="margin-left:40px" class="d-none d-xl-block">

                </div>
                <div class="col-md-2 ">
                    <p class="fee">FEE INFORMATION<p>
                </div>
                <div class="col-md-2 ">
                     <img src="images/dashed-line.jpg" height="50px" width="80%" style="margin-left:40px" class="d-none  d-xl-block">
                </div>
                <div class="col-md-3 ">
                    <p class="border">CONFIRMATION</p>
                </div>
               
            </div>
        </div>
        <div class="container pt-5 ">
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="col-md-2">
                    
                   
                </div>
                <div class="col-md-4">
                <div class="card">
                <form class="pt-5"  style="margin-left: 10px; margin-right: 10px;" name="myForm" method="post" action="FeeServlet" onsubmit="return validate()">
                <div class="input-box">  
                      
                       <input type="text" id="PaidAmount" name="studId" value="<c:out value="${studId.studentId}" />">
                        <label for="Address" >Stud_id</label>
                     </div>
                    <div class="input-box">  
                      
                        <input type="number"  id="TotalFee" name="totalFee" value="<c:out value="${feeData.fee}" />" onkeypress = "return prevent(event)" required>
                        <label for="TotalFee" >Total Fee</label>
                     </div>
                     <div class="input-box">  
                      
                        <input type="number"  id="PaidAmount" name="paidAmount"  onkeypress = "return prevent(event)" required>
                        <label for="PaidAmoun" >Paid Amount</label>
                     </div>
                     <div class="input-box">  
                      
                        <input type="date"  id="PaidDate" name="paidDate"  onkeypress = "return prevent(event)" required>
                        
                     </div>
                     <div >  
                        <select class="form-select" id="modeofPayment" name="modeOfPayment">
                            <option value="selected">Mode of Payment</option>
                            <option value="Cash">Cash</option>
                            <option value="DigitalPayments">Digital Payments</option>
                            <option value=" Online banking">Online banking</option>
                          </select>
                     </div>
                     <div class="input-box">  
                      
                        <input type="text"  id="DueAmount" name="dueAmount"  onkeypress = "return prevent(event)" required>
                        <label for="DueAmount" >Due Amount</label>
                    
                        <button class="btn btn-primary" type="submit" style="margin-top: 10px; float: right;margin-bottom: 10px;">Save</button>
                    </div>
                </form>
            </div>
                </div>
                <div class="col-md-4"></div>
                </div>
            </div>
          </div>
        </div>
      </div>
      <!-- model logout design -->

 <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog"style=" max-height:85%;  margin-top: 300px; margin-bottom:100px;">
      <div class="modal-content" style="width: 80%;">
                <div class="modal-body"><i class="fa fa-close" data-bs-dismiss="modal" style="float:right"></i>
                  <p> Are you sure want to Logout?</p> 
                  <form action="/logout">
                      <input type="button" name="logout" id="logout" value="Yes" class="btn btn-warning" >
                  </form>
                       
                 </div>
      </div>
    </div>
 </div>
               <!-- =============== Scripts==============================-->
     <script >
                //add  hovered  class to selected list item
                  let list = document.querySelectorAll(".navigation li");
              
                  function activeLink(){
                      list.forEach((item) => {
                          item.classList.remove("hovered");
                      });
                      this.classList.add('hovered');
              
                  }
                  list.forEach((item) => item.addEventListener("mouseover", activeLink));
              
                  //Menu Toogle
                  let toggle = document.querySelector(".toggle");
                  let navigation = document.querySelector(".navigation");
                  let main = document.querySelector(".main");
              
                  toggle.onclick = function(){
                      navigation.classList.toggle("active");
                      main.classList.toggle("active");
              
                  }</script>
       
    
    
    
        <!-- =====ionicons===== -->
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        </body>
        </html>