
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>FAQ by Topic</title>
		<!-- View Port Meta Tag -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- BootStrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- BootStrap theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  </head>
  <body>
	<div class="container-fluid">

		<div class="row">
			<div class="col-xs-12">
			<h2>Serach Faqs by Topic</h2>
				<div>&nbsp;</div>
				<div class="table-responsive">
				<div class="col-xs-12">
				
				<table>
					<form method="post" action="${pageContext.request.contextPath}/FaqDataServlet">
						<tr class="row">
							<td>Select Topic: &nbsp;  </td>
							<td>
								<select class="form-control" id="searchTopic" name="searchTopic">
									<c:forEach items="${topics}" var="topic">
										<option value="${topic.topicId}">${topic.topicName}</option>
									</c:forEach>
								</select>
							</td>
							<td>
							</td>
							<td>
								<button type="submit" class="btn btn-default">Search</button>
							</td>
						</tr>									
					</form>
					</table>
					<div>&nbsp;</div>
					<table class="table table-striped table-bordered table-hover">
					<tr>
						<th>topicName</th>
						<th>Question</th>
						<th>Answer</th>
					</tr>
							<c:forEach items="${faqs}" var="faq">
							<tr>
									<td><c:out value="${faq.topic.topicName}" /></td>
									<td><c:out value="${faq.question}" /></td>
									<td><c:out value="${faq.answer}" /></td>									
							</tr>
						</c:forEach>
				</table>
				</div>
			</div>
		</div>
		</div>
	</div>
	<!-- Latest compiled and minified JQuery JS -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
	<!-- Latest compiled and minified BootStrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>
