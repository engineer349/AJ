<%@ Page Title="Signup" Language="C#"   AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="AJ.Signup" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>SignUp</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="Css/login.css" />
</head>
<body>
    <div class="login-container">
        <img src="Images/zencare-logo.png" alt="Your Company Logo" class="logo" />
        <h1>Register</h1>
        <form runat="server" method="post">  
            <div class="form-group">
              <div class="form-row"> 
                  <div class="col-md-6"> 
                    <asp:TextBox  runat="server" TextMode="SingleLine" CssClass="form-control" ID="Txtfirstname" placeholder="First Name"></asp:TextBox>
                 </div>
                  <div class="col-md-6">
                       <asp:TextBox  runat="server" TextMode="SingleLine" CssClass="form-control" ID="Txtlastname" placeholder="Last Name"></asp:TextBox>
                  </div>
               </div>
            </div>
            <div class="form-group">
                 <div class="form-row">
                     <div class="col-md-6">
                          <asp:TextBox ID="Txtemail" TextMode="Email" CssClass="form-control"  placeholder="Email" runat="server"></asp:TextBox>
                     </div>
                       <div class="col-md-6">
                            <asp:TextBox ID="Txtusername" TextMode="SingleLine" CssClass="form-control"  placeholder="Username" runat="server"></asp:TextBox>
                         </div>

                 </div>      
            </div>
            <div class="form-group">
                
               <div class="form-row">
                   <div class="col-md-6">
                       <asp:TextBox ID="Txtpassword" TextMode="Password" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
                   </div>
                   <div class="col-md-6">
                          <asp:TextBox ID="Txtcpassword" TextMode="Password" CssClass="form-control" runat="server" placeholder="ConfirmPassword"></asp:TextBox>
                   </div>
               </div>
               
            </div>
            <div class="form-group">
             <div class="form-row"> 
                    <div class="col-md-12">
                        <asp:TextBox  runat="server" ID="DOB" TextMode="Date" CssClass="form-control" placeholder="DOB"></asp:TextBox>
                    </div>             
                    
              </div>
            </div>             
            <div class="form-group">
              <div class="form-row">
                  <div class="col-md-12">
                      <asp:CheckBox ID="agreeterm" runat="server" />
                      <a href="#" >I agree to terms of service</a>
                  </div>
              </div>  
              </div>
            <div>
               <asp:Button ID="submit" runat="server" Text="Next"  class="btn btn-primary"/>
             </div>
            <div class="form-group">
              <div class="form-row">
                  <div class="col-md-12">                     
                      <a href="Login.aspx">Already have an account?</a>
                  </div>
              </div>  
              </div>
            

        </form>
    </div>
    
    <!-- Bootstrap JS (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script> 
         function calculateAge(selectedDate) {
          // Get today's date
          const today = new Date();

          // Convert selected date string to a Date object
          const selectedDateObj = new Date(selectedDate);

          // Calculate the difference in milliseconds
          const timeDiff = today.getTime() - selectedDateObj.getTime();

          // Calculate age in years (rounded down)
          const age = Math.floor(timeDiff / (1000 * 60 * 60 * 24 * 365));

          return age;
        }

        function validateDateOfBirth(dobInput) {
          // Get the selected date from the input field
          const selectedDate = dobInput.value;

          // Check if date is valid and not empty
          if (!selectedDate) {
            alert("Please select a date of birth.");
            return false;
          }

          // Calculate age based on selected date
          const age = calculateAge(selectedDate);

          // Block selection below 18 years
          if (age < 18) {
              Swal.fire({
                  icon: 'error',
                  title: 'Age Restriction',
                  text: 'You must be 18 years or older to proceed.'
              });
            dobInput.value = ""; // Clear the input field
            return false;
          }

          // Block selection for ages above 90
          if (age > 90) {
              Swal.fire({
                  icon: 'error',
                  title: 'Age Restriction',
                  text: 'You are too  older to proceed.'
              });
            dobInput.value = ""; // Clear the input field
            return false;
          }

          // Valid date and age
          return true;
        }

        // Assuming your DOB input has an ID of "DOB"
        const dobInput = document.getElementById("DOB");

        // Attach event listener to validate on date change
        dobInput.addEventListener("change", function() {
          const isValid = validateDateOfBirth(this);
          if (!isValid) {
            // Disable further form submission or actions if validation fails
            // (You need to implement this based on your specific form or application)
          }
        });
    </script>

</body>
</html>
