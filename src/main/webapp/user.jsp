<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--Title and favicon icon-->
<title>User Admin</title>
<link rel="icon" type="image/png"
	href="https://image.flaticon.com/icons/png/512/4896/4896203.png" />
<!--Link Google Font-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet" />
<!--Link Font Awesome-->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet" />
<!--Link Bootstrap -->
<link href="styles/bootstrap.min.css" rel="stylesheet" />
<!--Link My style-->
<link href="styles/main.css" rel="stylesheet" />
</head>

<body>
	<div class="container box">
		<form action="userAdmin" method="post">
			<input type="hidden" name="action" value="update_user">
			<table class="table table-borderless table-noborder">
				<tbody>
					<tr>
						<h1 class="text-white">Update user</h1>
						<p class="text-white">NOTE: You can't update the email address.</p>
						<p class="text-white">
									<i class="text-white">${message}</i>
						</p>
						<td class="text-right td-label"><label class="text-white"
							for="customer-name">Email:</label></td>
						<td><input type="email" class="input-focus usid" name="email"
							id="customer-name" value="${user.email}" readonly></td>
					</tr>
					<tr>
					<tr>
						<td class="text-right td-label"><label class="text-white"
							for="customer-name">First Name:</label></td>
						<td><input type="text" class="input-focus usid"
							name="firstName" id="customer-name" value="${user.firstName}"></td>
					</tr>
					<tr>
						<td class="text-right td-label"><label class="text-white"
							for="customer-email">Last Name:</label></td>
						<td><input type="text" class="input-focus usid"
							name="lastName" id="customer-email" value="${user.lastName}"></td>
					</tr>
					<td class="text-right"></td>
					<td><span class="btn-color"> <input type="submit"
							value="Update" class="btn btn-primary btn-test">
					</span></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>