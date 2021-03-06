<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- Begin Body -->
<div class="container">
	<div class="row">
		<div class="span12">
			<h2>新增請假單</h2>
			<form:form id="frmSave" method="POST"
				commandName="${pageContext.request.contextPath }/bd/nlv" modelAttribute="form">
				<table>
					<tr>
						<th>申請人</th>
						<td><form:input path="applier" /></td>
					</tr>
					<tr>
						<th>申請類別</th>
						<td><form:input path="leaveType" /></td>
					</tr>
					<tr>
						<th>申請日期</th>
						<td><form:input path="leaveBeginDate" /></td>
					</tr>
					<tr>
						<th>總申請日</th>
						<td><form:input path="leaveDay" /></td>
					</tr>
				</table>
				<br />
				<br />
				<button id="save">儲存</button>
			</form:form>
		</div>
	</div>
</div>

<script>
	$("#save").click(function() {
		$("#frmSave").submit();
	});
</script>