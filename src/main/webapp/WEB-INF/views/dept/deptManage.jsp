<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
</head>
<body id="page-top">
	    <!-- Page Wrapper -->
	    <div id="wrapper">
	    	<div id="content-wrapper" class="d-flex flex-column">
	    		<div id="content">	    		
		    		<div class="container-fluid" style="margin-top: 50px;">
						<sec:authentication property="Principal" var="user"/>
						    <div class="container-xxl">
						      <div class="authentication-wrapper authentication-basic container-p-y">
						        <div class="authentication-inner">
						          <!-- Register -->
						          <div class="card" style="width: ; align-items: center; margin: auto; margin-top: 10px;">
						            <div class="card-body">
						              <!-- Logo -->
						              <div class="app-brand justify-content-center">
						                <a href="#" class="app-brand-link gap-2">
						                  <img alt="" src="/resources/images/jisun3.png" style="width: 40px;" height="40px;">
						                  <span class="app-brand-text demo text-body fw-bolder">Animal Hospital</span>
						                </a>
						              </div>
						              
						              <!-- /Logo -->
						              <h4 class="mb-2">부서관리</h4>

										<div>
											<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="width: 200px;">부서등록</button>
										
											<select class="form-control" name='deptNo' id="deptNo" style="height: 35px;">
												<option value="${vo.deptNo}" selected="selected">${vo.deptName}</option>										
													<c:forEach items="${dept}" var="dept">
														<option value="${dept.deptNo}">${dept.deptName}</option>
													</c:forEach>
											</select>
										
										<!-- 선택한 부서에 해당하는 사원 리스트 -->
										
										<div class="card shadow mb-4" style="">			
												<!-- Content -->
												
												<table class="table" style="text-align: center; width:auto; margin: 20px;">
													<thead style="height: 70px;">
														<tr>
															<th>사원번호</th>
															<th>이름</th>
															<th>부서</th>
															<th>직급</th>
															<th>입사일</th>
															<th>상태</th>
														</tr>
													</thead>
													<tbody style="height: 35px;">
												<c:forEach items="${emp}" var="vo">
														<tr>
															<td><a href="/emp/empDetail?username=${vo.username}" style="color: #697a8d;">${vo.username}</a></td>
															<td><a href="/emp/empDetail?username=${vo.username}" style="color: #697a8d;">${vo.empName}</a></td>
															<td>${vo.deptName}</td>
															<td>${vo.positionName}</td>
															<td>${vo.hireDate}</td>
															<td>${vo.state}</td>
														</tr>
												</c:forEach>
													</tbody>
												
												</table>
											<div class="d-flex justify-content-between mb-3">
											<div>
												<!-- 검색 -->
												<div class="input-group mb-3">
													<form action="./deptList" method="get" class="d-flex align-items-center" id="frm">
														<div class="input-group" style="width: 120px;">
															<input type="hidden" value="${pager.page}" id="page" name="page">
															<select name="kind" id="k" class="form-select"
																data-kind="${pager.kind}" aria-label="Default select example" style="width: 50px;">
																<option class="kind" value="empName">이름</option>
																<option class="kind" value="deptName">부서</option>
																<option class="kind" value="positionName">직급</option>
															</select>
														</div> 
														<input type="text" name="search" value="${pager.search}"
															class="form-control" aria-label="Amount (to the nearest dollar)" style="width: 150px;">
															<button type="submit" class="btn btn-primary" style="width:100px;">검색</button>
													</form>
												</div>
											</div>
					    					<div>
					    						<!-- 페이징 -->
												<nav aria-label="Page navigation example">
													<ul class="pagination justify-content-center">
														<c:if test="${pager.pre}">
														<li class="page-item ${pager.pre?'':'disabled'}"><a
															class="page-link"
															href="./deptList?page=${pager.startNum - 1}&kind=${pager.kind}&search=${pager.search}"
															aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
														</a></li>
														</c:if>
														<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
															var="i">
															<li class="page-item"><a class="page-link"
																href="./deptList?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
														</c:forEach>
														<c:if test="${pager.next}">
															<li class="page-item"><a class="page-link"
																href="./deptList?page=${pager.lastNum + 1}&kind=${pager.kind}&search=${pager.search}"
																aria-label="Next"> <span aria-hidden="true">&raquo;</span>
															</a></li>
														</c:if>
													</ul>
												</nav>
					    					</div>
					    					<div> 						
					    					</div>
										</div>
												
											</div>										
										
										
										</div>
										<!-- 부서등록 modal -->
										<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h1 class="modal-title fs-5" id="exampleModalLabel">부서 등록</h1>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										      </div>
										      <div class="modal-body">
					
										        <input type="hidden" id="deptNoAdd" name="deptNo">
										          <div class="mb-3">
										            <label for="deptName" class="col-form-label">부서명:</label>
										            <input type="text" class="form-control" id="deptNameAdd" name="deptName">
										          </div>
										          <div class="mb-3">
										            <label for="parentNo" class="col-form-label">상위부서:</label>
														<select class="form-control" name='parentNo' id="parentNoAdd" style="height: 35px;">										
																<c:forEach items="${dept}" var="dept">
																	<option value="${dept.deptNo}">${dept.deptName}</option>
																</c:forEach>
																<option value=0>없음</option>
														</select>
										          </div>
										          
												      <div class="modal-footer">
												        <button class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
												        <button class="btn btn-primary" id="addBtn">추가</button>
												      </div>
					
										      </div>
										    </div>
										  </div>
										</div>										
						            </div>
						          </div>
						          <!-- /Register -->
						        </div>
						      </div>
						    </div>
						
						    <!-- / Content -->
		    		</div>   		
	    		
	    		</div>	    		

	    	</div>
	    </div>  
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
	
	<script type="text/javascript">A
		$('#addBtn').on("click", function(){
	
			let deptName = $("#deptNameAdd").val();
			let parentNo = $("#parentNoAdd").val();
	
		
			let data = {deptName:deptName, parentNo:parentNo};
			
		    if(deptName == ""){
		        alert("부서이름을 입력해주세요.");
		        deptName.focus();
		        return;
		    }
	
			$.ajax({
				url:"/dept/deptList/deptAdd",
	            data: data,
				method:"post",												
				success : function(){
					console.log(data);
					alert("등록이 완료되었습니다!");
					location.href="/dept/deptList";		
				},
				error : function(data){
					console.log(data);
					alert("관리자에게 문의해주세요.");
				}
			})
	
		});
	</script>
	<script type="text/javascript">
	
	$("#deptNo").on("change",function(){
		var deptNo=this.value;
		console.log(deptNo)			
	    var param = {"deptNo":deptNo}
	    console.log(param)
	    
	   
			var request = $.ajax({
			   url:"/dept/deptManageList",
			   data:JSON.stringify(param),
			   method:"POST",
			   async:true,												
			   contentType: "application/json"				 																									
		   			   
		    })
	 
	console.log(request)
	});

	
	</script>
</body>
</html>