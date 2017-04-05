<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--

.style1 {
	font-size: xx-large;
	font-weight: bold;
}
.style2 {
	font-size: x-large;
	font-weight: bold;
}

</style>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body style="background-color:#FAFAD2">


<% if(session.getAttribute("user")==null)
{
	response.sendRedirect("Home.html");
}
%>


<div class="alert alert-success text-center"><h2>Admin Panel</h2> </div>

<div class="col-md-6 col-md-offset-3 alert alert-info" style="margin-top:30px;margin-bottom:50px">
 
  <h3 class="text-center">Driver Registeration Here...!!</h3>
						<form action="driver.jsp">
						<div class="form-group">
								    <label for="exampleInputName">Name</label>
								    <input type="text" name="text1" class="form-control" id="exampleInputEmail1" placeholder="Username" required>
								  </div>
						<div class="form-group">
								    <label for="exampleInputEmail">Email</label>
								    <input type="text" name="text2" class="form-control" id="exampleInputEmail1" placeholder="Email" required>
								  </div>
						<div class="form-group">
								    <label for="exampleInputAddress">Address</label>
								    <input type="text" name="text3" class="form-control" id="exampleInputEmail1" placeholder="Address" required>
								  </div>
						<div class="form-group">
								    <label for="exampleInputContact">Contact</label>
								    <input type="text" name="text4" class="form-control" id="exampleInputEmail1" placeholder="Contact" required>
								  </div>
						<br><strong><b>Driving Experience</b></strong>
						<select name="text5" class="tmSelect auto" data-class="tmSelect tmSelect2" data-constraints="">
									<option>Chose</option>
									
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									</select><br><br>
												
						<br><strong><b>Age</b></strong>
								<select name="age" class="tmSelect auto" data-class="tmSelect tmSelect2" data-constraints="">
									<option>Age 21-40</option>
									
									<option>21</option>
									<option>22</option>
									<option>23</option>
									<option>24</option>
									<option>25</option>
									<option>26</option>
									<option>27</option>
									<option>28</option>
									<option>29</option>
									<option>30</option>
									<option>31</option>
									<option>32</option>
									<option>33</option>
									<option>34</option>
									<option>35</option>
									<option>36</option>
									<option>37</option>
									<option>38</option>
									<option>39</option>
									<option>40</option>
								</select><br><br>
						
						<div class="form-group">
								    <label for="exampleInputPassword1">Password</label>
								    <input type="password" name="text6" class="form-control" id="exampleInputPassword1" placeholder="Password">
								  </div>
						
						<div class="form-group">
								    <label for="exampleInputPassword1">Confirm Password</label>
								    <input type="password" name="text7" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password">
								  </div>
								  
						<div class="form-group">
								    <label for="exampleInputTime">Time</label>
								    <input type="text" name="text8" class="form-control" id="exampleInputPassword1" placeholder="Registration Time">
								  </div>
					
						<div class="form-group">
						    <label for="exampleInputFile">Image</label>
						    <input type="file" name="text9" id="exampleInputFile">
						    
						</div>
						<div class="form-group">
						    <label for="exampleInputFile">Upload Driving License</label>
						    <input type="file" name="text10" id="exampleInputFile">
						 
						</div>

						<strong><b>I Accept</b></strong><input type="checkbox" name="chk">remember-me<br><br>

						<input type="submit" value="Submit">
						</form>
  
</div>  



<script src="js/bootstrap.min.js"></script>
</body>
</html>