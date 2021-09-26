
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Registration Form</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="Register.css">
    <link rel="stylesheet" href="Button.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dcalendar.picker.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
#deceased{
    background-color:#FFF3F5;
	padding-top:10px;
	margin-bottom:10px;
}
.remove_field{
	float:right;	
	cursor:pointer;
	position : absolute;
}
.remove_field:hover{
	text-decoration:none;
}
</style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.12.4.js"></script>
	<script src="js/dcalendar.picker.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script type='text/javascript'>
	$(function() {
		//calendar call function
		$('.datepicker').dcalendar();
		$('.datepicker').dcalendarpicker();

		    var max_fields = 10; //maximum input boxes allowed
		    var x = 1; //initlal text box count
		
		$('#add').click(function () {		   
			if(x < max_fields){ //max input box allowed
			    x++; //text box increment
			    $("#addblock").before('<div class="col-md-12 col-sm-12" id="deceased">	<a href="#" class="remove_field" title="Remove">X</a>	<div class="form-group col-md-3 col-sm-3">            <label for="name">Name*</label>            <input type="text" class="form-control input-sm" id="name" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="gender">Gender*</label>            <input type="text" class="form-control input-sm" id="gender" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="age">Age*</label>            <input type="text" class="form-control input-sm" id="age" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="DOB">Date of Birth or Exact Birth Year*</label>            <input type="text" class="form-control input-sm datepicker" id="DOB'+x+'" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="DOD">Date of Death or Exact Death Year*</label>             <input type="text" class="form-control input-sm datepicker" id="DOD'+x+'" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="mother">Deceased Person\'s Mother Name*</label>            <input type="text" class="form-control input-sm" id="mother" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="father">Deceased Person\'s Father Name*</label>            <input type="text" class="form-control input-sm" id="father" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">	    <label for="photo">Upload Photo*</label>	    <input type="file" id="photo">	    <p class="help-block">Please upload individual photo. Group photo is not acceptable.</p>	</div></div>');

				$('.datepicker').dcalendarpicker();
			}  else{
				alert("Only 10 Names Allowed");
			}  
		});
		$(document).on('click', '.remove_field', function(e){
		        e.preventDefault(); 
			$(this).parent('div').remove(); 
			x--;
		});

		
	});
	</script>
  </head>
  <body>
<div class="panel panel-primary" style="margin:20px;">

	<div class="panel-heading">
        	<h3 class="panel-title">Registration Form</h3>
	</div>

<div class="panel-body">
    <form>
<div class="col-md-12 col-sm-12">
	<div class="form-group col-md-6 col-sm-6">
            <label for="name">First Name*	</label>
            <input type="text" class="form-control input-sm" id="name" placeholder="">
    </div>
       
    <div class="form-group col-md-6 col-sm-6">
	      <label for="address">Address*</label>
	      <textarea class="form-control input-sm" id="address" rows="3"></textarea>
	</div>
	   
    <div class="form-group col-md-6 col-sm-6">
            <label for="name">Last Name*	</label>
            <input type="text" class="form-control input-sm" id="name" placeholder="">
    </div>
        

    <div class="form-group col-md-6 col-sm-6">
            <label for="email">Email*</label>
            <input type="email" class="form-control input-sm" id="email" placeholder="">
        </div>


 
      	<div class="form-group col-md-6 col-sm-6">
            <label for="country">Country*</label>
            
		<select class="form-control" name="nationality" id="nationality"  >
                                    <option>-select-</option>
                                    <option>India</option>
                                    <option>Singapore</option>
                                    <option>Malaysia</option>
                                    <option>USA</option>
        </select>

</div>      	
	<div class="form-group col-md-6 col-sm-6">
            <label for="city">City*</label>
        
                      
		<select class="form-control" name="nationality" id="nationality"  >
                                    <option>-select-</option>
                                    <option>India</option>
                                    <option>Singapore</option>
                                    <option>Malaysia</option>
                                    <option>USA</option>
        </select>
        </div>
        
  
	
	<div class="form-group col-md-6 col-sm-6">
            <label for="state">State*</label>
            <input type="text" class="form-control input-sm" id="state" placeholder="">
        </div>



	<div class="form-group col-md-6 col-sm-6">
            <label for="pincode">Pincode</label>
            <input type="text" class="form-control input-sm" id="pincode" placeholder="xxxxxx">
        </div>
        
    <div class="form-group col-md-6 col-sm-6">
            <label for="Birthdate">Date of Birth *</label>
            <input type="date" class="form-control input-sm datepicker" id="Birthdate" placeholder="">
        </div>

	
	<div class="form-group col-md-6 col-sm-6">
	               	  <p>Gender</p>
  			<input type="radio" id="Male" name="Gender" value="Male">
  			<label for="Male">Male</label><br>
  			<input type="radio" id="Female" name="Gender" value="Female">
  			<label for="Female">Female</label><br>    
	</div>
	

    <div class="form-group col-md-6 col-sm-6">
            <label for="mobile">Mobile*</label>
             <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
              <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} >
		
            </div>
	</div>
	
	<div class="form-group col-md-6 col-sm-6">
            <label for="pincode">Password *</label>
            <input type="password" class="form-control input-sm" id="pincode" placeholder="">
        </div>
        
    <div class="form-group col-md-6 col-sm-6">
            <label for="arrival">Confirm Password  *</label>
            <input type="password" class="form-control input-sm datepicker" id="arrival" placeholder="">
        </div>	   
        

	   
	<div class="form-group col-md-6 col-sm-6" >
            <label for="pincode">I agree the terms and conditions * </label>
	    <label><input type="checkbox" checked data-toggle="toggle"></label>
	</div>
	


	
<div class="col-md-12 col-sm-12" >
	<div class="form-group col-md-3 col-sm-3">
		<input type="submit" class="button1" value="Register">
	</div>
</div>


<div class="col-md-12 col-sm-12">
	<div class="form-group col-md-3 col-sm-3" >
			<input type="submit" class="button2" value="Reset form">
	</div>
</div>	

<div class="col-md-12 col-sm-12">

 			<label>Already have an account please <a href=www.facebook.com>sign in</a> </label>
</div>	

</form>

</body>
</html>