<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SUID.login" %>

<!DOCTYPE html>
<script runat="server">

    protected void Unnamed1_Click(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Reg2.aspx");
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Robust Calories Intake Monitoring</title>
    <script src="https://kit.fontawesome.com/94cbdeb661.js" crossorigin="anonymous"></script>
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" /> <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <link rel="stylesheet" href="style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script>
          $(document).ready(function () {
              function Hello() {
                  debugger
				  $.ajax({
                      type: "POST",
					  contentType: "application/json; charset=utf-8",
					  url: "JsonData/login",
					  dataType: "json",
					  success: function (result) {
                          response(result.d);
						  alert(result.d);
					  },
					  error: function (result) {
						  alert(result);
					  }
				  });
			  }
          //$("#btnLogin").click(function () {
            //  Hello();
              // alert("The paragraph was clicked.");
              //Response.redirect("https://localhost:44353/Dashboard.html");
			  //window.location.href = "/Dashboard.html";
			  //alert("The paragraph was clicked.");
         // });
		 // });
	  </script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="homescreen">
        <div class="bar w-100 d-flex align-content-center justify-content-center shadow-lg">
        <div class="typewriter">
               <h1>Robust Calories Tracking System</h1>
           </div>
        </div>
          
        <div class="row ">
           <div class="col-6  logoschool">
           <div class="justify-content-center align-content-center d-flex">
               <img class="image2" src='calories-counting-cover-2-1.jpg'/>
           </div>
           

           </div>
           <div class="form col-lg-6 md-col-12 col-12 justify-content-center align-content-center d-flex">
            <div class="details continer position-relative ">
            <div class="position-relative ">
                        <h4>Login</h4>
                        <i class="fa-solid fa-user"></i>
                        <input id="txt_UName" runat="server" class="login shadow-lg" type="text"  placeholder="User Name"/><br/>
                        <i class="fa-solid fa-lock"></i>
                        <input id="txt_Pwd" runat="server" class="login  shadow-lg" type="password" placeholder="Password"/><br/>
                        <asp:Button runat="server"   class="btn btn-success btnlogin" Text="LOGIN" OnClick="Unnamed1_Click1" ></asp:Button>
               
                        <a class='a1 shadow-lg' href="#">Forgot password?</a>
            </div>    
                    
                        
            </div>


           </div>

        </div>
        
    </div>
    </form>
</body>
</html>
