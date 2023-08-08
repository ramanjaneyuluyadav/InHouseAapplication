<!DOCTYPE html>
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

        <link rel="stylesheet" href="css/register.css">

        <!-- =======================styles============= -->
        <link rel="stylesheet" href="css/dashboardstyle.css">
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
                    <p class="border">FEE INFORMATION<p>
                </div>
                <div class="col-md-2 ">
                     <img src="images/dashed-line.jpg" height="50px" width="80%" style="margin-left:40px" class="d-none  d-xl-block">
                </div>
                <div class="col-md-3 ">
                    <p class="border">CONFIRMATION</p>
                </div>
               
            </div>
        </div>
        <div class="container pt-2 card">
            <form action="StudentServlet" class="form-group pt-5"  method="post"   name="myForm" method="post" action="./feedetails.html" onsubmit="return validate()">
                <div class="container pt-2">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="input-box">
                              
                               <input type="text" id="firstName" name="firstname"  onkeypress = "return prevent(event)" required>
                               <label for="firstname" >First Name</label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-box">
                              
                              <input type="text"  id="lastName" name="lastname" required>
                              <label for="lastname" >Last Name</label>
                            </div>
                        </div>
                         <div class="col-md-3">
                            <div class="input-box">
                                
                                <input type="text"  id="fatherName" name="fathername" required>
                                <label for="fathername" >Father Name</label>
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="input-box">
                       
                                <input type="email" id="email" name="email" oninput="validateEmail()" required>
                                <label for="email" >Email ID</label>
                                <p id="errorlabel" class="mail"></p>
                            </div>  
                        </div>
                    </div>
            <div class="row pt-4 ">
                <div class="col-md-3">
                    <div class="input-box">
                       
                       <input type="number"  id="mobile" name="mobile" onkeypress="return prevent(event)" required>
                       <label for="moblie" >Mobile Number</label>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-box">
                        
                        <input type="number"  id="alter-mobile" name="secondmobile"name="alter-mobile"onkeypress="return prevent(event)" required>
                        <label for="moblie" >Alter_Mobile</label>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-box">  
                      
                       <input type="text"  id="Address" name="address"  onkeypress = "return prevent(event)" required>
                       <label for="Address" >Address</label>
                    </div>
                </div>
                <div class="col-md-3 ">
                        
                    <div class="input-box">   
                       <input type="date"  id="doj" name="joindate" placeholder="Date of joining">  
                    </div>
                </div>
                </div>
            </div>
            <div class="row pt-4">
                <div class="col-md-3 pt-1">
                    <select class="form-select"  name="gender" id="gender">
                           <option value="selected">Gender</option>
                           <option value="female">Female</option>
                           <option value="male">Male</option>
                           <option value="other">Other</option>
                      </select>
                 
                </div>
                <div class="col-md-3 pt-1">
                    <select class="form-select" id="course" name="course">
                        <option value="selected">Courses</option>
                        <option value="Java">JAVA</option>
                        <option value="Python">PYTHON</option>
                        <option value="Devops">DEVOPS</option>
                        <option value="Testing">TESTING</option>
                        <option value="Power BI">POWER BI</option>
                      </select>
                </div>
                <div class="col-md-3 pt-1 ">
                        
                    <select name="qualification" class="form-select" id="qualification">
                        <optgroup label="UG">
                            <option>Qualification</option>
                            <option value="B tech (CSE)">B tech (CSE)</option>
                            <option value="B tech (EEE)">B tech (EEE)</option>
                            <option value="B tech (ECE)">B tech (ECE)</option>
                            <option value="B tech (Civil)">B tech (Civil)</option>
                            <option value="B tech (Mech)">B tech (Mech)</option>
                        </optgroup>
                        <optgroup label="PG">
                            <option value="MBA">MBA</option>
                            <option value="B.Sc Agr">B.Sc Agr</option>
                            <option value="B.Ed">B.Ed</option>
                            <option value="B.Dec">B.Dec</option>
                        </optgroup>
                        <optgroup label="Degree">
                           <option value="B.com">B.com</option>
                            <option value="Bsc">Bsc</option>
                            <option value="BA">BA</option>
                            <option value="B.Voc">B.Voc</option>
                            <option value="BMS">BMS</option>
                            <option value="BCA">BCA</option>
                            <option value="BBA">BBA</option>
                            <option value="BBM">BBM</option>
            
                        </optgroup>
                        <optgroup label="Other">
                            <option value="Other">Other..</option>
                        </optgroup>
                      </select>
                    
                </div>
                
                
                <div class="col-md-3 pt-1 ">
                    <div >
                      <select class="form-select" name="yearofpass"  id="yop">
                        <option value="selected">Year of passing</option>
                        <option value="2010">2010</option>
                        <option value="2011">2011</option>
                        <option value="2012">2012</option>
                        <option value="2013">2013</option>
                        <option value="2014">2014</option>
                        <option value="2015">2015</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                        <option value="2026">2026</option>
                        <option value="2027">2027</option>
                        <option value="2028">2028</option>
                        <option value="2029">2029</option>
                      </select>
                    </div>
                </div>
            </div>
           
            <div class="row pt-5">
                <div class="col-md-4">
                    <div class="input-box">                     
                     <input type="text"  id="counceller" name="counceller"  onkeypress = "return prevent(event)" required>
                     <label for="counceller" >counceller</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-box"> 
                      <input type="text" name="remarks" id="Remarkes" required>
                      <label for="Remarkes">Remarkes</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="container pt-5">
            <div class="row">
                <div style="text-align: right;">
                    <button class="btn btn-primary" type="submit">Save</button>
                </div>
            </div>
        </div>
        </form>
     </div>
   </div>
</div>
<!-- model logout design -->

 <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog"style=" max-height:85%;  margin-top: 300px; margin-bottom:100px;">
      <div class="modal-content" style="width: 80%;">
                <div class="modal-body"><i class="fa fa-close" data-bs-dismiss="modal" style="float:right"></i>
                  <p> Are you sure want to Logout?</p> 
                  <form action="LogOutServlet" method="post">
                      <input type="submit" name="logout" id="logout" value="Yes" class="btn btn-warning" >
                  </form>
                       
                 </div>
      </div>
    </div>
 </div>
       
        <script>
                function validate(){
                        
                        if(!validateEmail()){
                            return false;
                        }
                        return true;
                    }
        
                   function validateEmail() {
                    var emailInput = document.getElementById("email");
                    var email = emailInput.value;
                    
                    var errorLabel = document.getElementById("errorlabel");
                    
                    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    
                    var isValid = emailRegex.test(email);
                    
                    if (!isValid) {
                        errorLabel.innerHTML = "Please enter a valid email address.";
                        emailInput.style.borderColor = "red";
                        return false;
                    } else {
                        errorLabel.innerHTML = "";
                        emailInput.style.borderColor = "initial";
                        return true;
                    }
                    }
                   
                   function prevent(event){
                       var ch = event.which;
                       if((ch >=65 && ch <=90) || (ch >=97 && ch <=122) || (ch ==32) || (ch ==8) || (ch==0)){
                           return true;
                       }
                       else{
                           event.preventDefault();
                       }
                   }
                function prevent(event){
                    var num=event.which;
                    if(num > 10 || num <10){
                        return true;
                    }
                    else{
                        event.preventDefault();
                    }
        
                }
                
        
        </script>
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