<%@ include file="../partials/header.jspf" %>
<div  class="ui black inverted segment">
	<div class="ui inverted secondary menu">
		<div class="ui container">
			<div class="item"><a href="/"><h3>Online FIR System</h3></a></div>
			<a class="right active item" href="/logout">Logout</a>
		</div>
	</div>
</div>

<div class="registerpage">
	<div class="ui centered grid container">
		<div class="nine wide column">
			<a href="/admin"
				><button class="ui labeled icon button">
					<i class="angle left icon"></i>
					Go Back
				</button></a
			>
			<c:if test="${validationError}">
				<div class="ui icon warning message">
					<i class="lock icon"></i>
					<div class="content">
						<div class="header">
							Validation failed!
						</div>
						<form:errors path="user.*" />
					</div>
				</div>
			</c:if>
			<h1 class="form-header">Registration</h1>
			<div class="ui fluid card">
				<div class="content">
					<form:form
						class="ui form"
						action="/admin/police/new"
						method="post"
						modelAttribute="user"
					>
						<div class="field">
							<form:label path="username" for="username"
								>Username</form:label
							>
							<form:input
								path="username"
								type="text"
								name="username"
								id="username"
								required="true"
								placeholder="Enter Username"
							/>
						</div>
						<div class="field">
							<form:label path="password" for="password"
								>Password</form:label
							>
							<form:input
								path="password"
								type="password"
								name="password"
								id="password"
								required="true"
								placeholder="Enter Password"
							/>
						</div>
						<div class="field">
							<form:label path="police.name" for="name"
								>Name</form:label
							>
							<form:input
								path="police.name"
								type="text"
								name="name"
								id="name"
								required="true"
								minlength="2"
								placeholder="Enter Police Personnel's Name"
							/>
						</div>
						<button
							class="ui primary labeled icon button"
							type="submit"
						>
							<i class="lock alternate icon"></i>
							Register
						</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../partials/footer.jspf" %>