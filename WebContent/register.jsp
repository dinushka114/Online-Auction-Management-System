<%@ page language="java" contentType="text/html charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:template title="Home page">
      <jsp:attribute name="content">
        <div class="container mt-sm-4">
          <h1 class="text-center">Register</h1>
          <div id="result">
 			
		  </div>
          <form  method="post" id="registerForm">
            <div class="form-group">
              <label for="firstName">First Name</label>
              <input type="text" class="form-control" id="firstName" name="firstName" aria-describedby="emailHelp"
                placeholder="Enter first name">
            </div>
            
             <div class="form-group">
              <label for="lastName">Last Name</label>
              <input type="text" class="form-control" id="lastName" name="lastName" aria-describedby="emailHelp"
                placeholder="Enter first namne">
            </div>
            	
            <div class="form-group">
              <label for="userName">User Name</label>
              <input type="text" class="form-control" id="userName" name="userName" aria-describedby="emailHelp"
                placeholder="Enter username">
            </div>
            
             <div class="form-group">
              <label for="userName">Phone Number </label>
              <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp"
                placeholder="Enter phone no">
            </div>
            
            <div class="form-group">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp"
                placeholder="Enter email">
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            	
            <div class="form-group">
            	<label for="usertype">Select User Type</label>
            	<select name="userType" id="userType" class="form-control">
            		<option >Select User Type</option>
            		<option value="bidder">Bidder</option>
            		<option value="seller">Seller</option>
            	</select>
            </div>
            
            <div class="form-group">
              <label for="exampleInputPassword1">Password</label>
              <input type="password" class="form-control" name="password" id="password" placeholder="Password">
            </div>
            
            <div class="form-group">
              <label for="exampleInputPassword1">Confirm Password</label>
              <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password">
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
         
          <script src="js/register.js">
          		
          </script>
        </div>
      </jsp:attribute>
    </mt:template>