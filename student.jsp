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
                        
                    </label>
                </div>

                <div >
                 <ion-icon name="person-circle-outline"></ion-icon><c:out value="${dash.name}" />
                    
                </div>
            </div>
      
       <div>
           <form action="StudentList">
              <button type="submit">submit</button>
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

</body>


</html>