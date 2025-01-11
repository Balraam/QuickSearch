<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Complex Form</title>
</head>
<body class="" style="background: #e2e2e2;">

	<div class="container mt-4">

		<div class="row">
			<div class="col-md-6 offset-md-3">

				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Complex Form</h3>
						<div class="alert alert-danger" role="alert">

							<form:errors path="entity.*" />
						</div>
						<form action="submit" method="post" enctype="multipart/form-data">
							<div class="row">
								<div class="col">
									<input type="text" class="form-control"
										placeholder="First name" name="name">
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Last name"
										name="lastName">
								</div>

							</div>
							<div class="form-group mt-5">
								<input type="text" class="form-control"
									placeholder="Mobile Number" name="Mobile">
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label> <input type="email"
										class="form-control" name="email">
								</div>

							</div>
							<div class="form-group">
								<label for="inputAddress">Address</label> <input type="text"
									class="form-control" name="address" placeholder="1234 Main St">
							</div>
							<div class="form-row" mt-5>
								<div class="form-group col-md-4">
									<label for="inputCity">City</label> <input type="text"
										class="form-control" name="City">
								</div>
								<div class="form-group col-md-4">
									<label for="inputState">State</label> <select name="State"
										class="form-control">
										<option selected>Choose...</option>
										<option>India</option>
										<option>Bangalore</option>
									</select>
								</div>
								<div class="form-group">
									<label for="exampleFormControlFile1">Select your file</label> <input
										type="file" name="File" class="form-control-file"
										id="exampleFormControlFile1">
								</div>
								<div class="col">
									<div class="text-right">
										<button type="submit" class="btn btn-primary mt-5">Submit</button>
									</div>
								</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>