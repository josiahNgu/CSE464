<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<head>
<meta charset="UTF-8">
<title>Concert Search Result</title>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="CustomerHomepage.jsp">Home</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link">${userBean.userName}</a></li>
				<li class="nav-item"><a class="nav-link" href="ViewOrders.jsp">Order</a></li>
				<li class="nav-item"><a class="nav-link" href="Login.jsp">Logout</a></li>
			</ul>
		</nav>
	</div>
	<div class="container">
		${shows.MovieName}
		<div>
			<table class="table table-bordered table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Venue</th>
						<th scope="col">Start Time</th>
						<th scope="col">Seat Remaining</th>
						<th scope="col">Price</th>
						<th scope="col">Opening Acts</th>
						<th scope="col">Thumbnail</th>
						<th scope="col">More Info</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="show" items="${showResult}">
						<tr>
							<td>${show.movieName}</td>
							<td>${show.venue }</td>
							<td>${show.startTime}</td>
							<td>30</td>
							<td>$12</td>
							<td>No</td>
							<td><img src=${show.thumbnail
								}
								alt="Rennie Harris Puremovement" height="150"
								width="150"></td>
							<td><a href="ConcertDetailsSelection.jsp"> <input
									type="button" class="btn btn-dark" value="Details" />
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
