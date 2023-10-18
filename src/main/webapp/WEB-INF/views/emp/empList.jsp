<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">
<head>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
			<!-- Layout container -->
			<div class="layout-page" style="align-items:center;">
				<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
				<!-- Content wrapper -->
					<br><h3 style="margin-right: 1200px;">직원 목록 페이지</h3>
				<div class="card shadow mb-4" style="width: 1400px;">				
					<!-- Content -->
					
					<table class="table tb" style="text-align: center; ">
						<thead style="height: 70px;">
							<tr>
								<th>사원번호</th>
								<th>이름</th>
								<th>부서</th>
								<th>직급</th>
								<th>이메일</th>
								<th>연락처</th>
								<th>입사일</th>
								<th>상태</th>
							</tr>
						</thead>
					<c:forEach items="${list}" var="vo">
						<tbody style="height: 35px;">
							<tr>
								<td>${vo.empNo}</td>
								<td>${vo.name}</td>
								<td>${vo.deptName}</td>
								<td>${vo.positionName}</td>
								<td>${vo.email}</td>
								<td>${vo.phone}</td>
								<td>${vo.hireDate}</td>
								<td>${vo.state}</td>
							</tr>
						</tbody>
					</c:forEach>
					
					</table>
					<br>					
					<a href="/emp/empAdd" class="btn btn-secondary" style="width: 120px; height: 50px; color: white;">신규직원 등록</a>
				</div>
				
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>

</body>
</html>