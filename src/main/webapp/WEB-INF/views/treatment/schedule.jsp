<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
   data-theme="theme-default" data-assets-path="/assets/"
   data-template="vertical-menu-template-free">
<head>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href='/fullcalendar/main.css' rel='stylesheet'/>
<script src='/fullcalendar/main.js'></script>
<script src="/js/reservation/treatment/schedule.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <!-- Layout wrapper -->
   <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
         <c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
         <!-- Layout container -->
         <div class="layout-page">
            <c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
            <!-- Content wrapper -->
            <div class="content-wrapper">            
               <!-- Content -->               
               
               <!-- 내용부분-->               
               <div class="container-xxl flex-grow-1 container-p-y">
                 
               <select name='deptNo' id="deptNo" class="form-select form-select-sm" aria-label="Small select example"> 
	           	   <option selected>선택해주세요</option>
	           	   <option value="300">전체</option>
	               <option value="400">내과</option>
	               <option value="500">외과</option>
	               <option value="600">영상과</option>       
	          </select> 
               <div id="calendar"> </div>                           
               
               
               <!-- add Modal -->
               <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                 <div class="modal-dialog">
                   <div class="modal-content">
                     <div class="modal-header">
                       <h1 class="modal-title fs-5" id="exampleModalLabel">진료예약</h1>
                       <button type="button" id="closeBtn" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                     </div>
                     <div class="modal-body">               
                     <input type="hidden" id="customerNo" name="customerNo" value="${param.customerNo}" >
                     	
	                     <form action="./customerList" method="get">
		                     <div>
		                  	    고객 : <input type="text" name="animalName" id="animalName" value="${param.animalName}">                  
		                     <button type="submit" id="customerSearch" class="btn btn-primary" >검색</button>
		                     </div>
	                     </form>
                      
                        <input type="hidden" id="username" value="${param.username}">                  
                        
                        <div>                    
                     	진료의 : <input type="text" readonly class="form-control-plaintext" id="empName" name="empName" value="${param.empName}">                     
                        </div>
                        <div>
                     	진료시간 : <input type="datetime-local" id="treatmentDate">
                        </div>
                     </div>
                     <div class="modal-footer">
                       <button type="button" id="closeBtn"class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                       <button type="button" id="addBtn" class="btn btn-primary">Add</button>
                     </div>
                   </div>
                 </div>
               </div>
                          
               
               
                <!--detail modal -->
                <div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">진료예약상세</h1>
                        <button type="button" id="closeBtn" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                      
                      <input type="hidden" id="treatmentNo" name="treatmentNo">
                      <table class="table align-items-center mb-0">								
                      	<tbody>
                      
                        <tr>
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">이름: </span>
							</td>
	                        <td class="align-middle text-center text-sm">
	                            <span class="text-secondary text-xs font-weight-bold">
	                            	<input type="text" readonly class="form-control-plaintext" id="getanimalName" value="">
	                            </span>
	                        </td> 
                        </tr>
                        <tr>
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">보호자 이름: </span>
							</td> 
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">
								<input type="text" readonly class="form-control-plaintext" id="getcustomerName" value="">
								</span>
							</td>                                                     
                        </tr>
                        <tr>
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">진료의 : </span>
							</td> 
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">
								<input type="text" readonly class="form-control-plaintext" id="getempname" value=""></div>
								</span>
							</td>                                                     
	                    </tr>
	                    <tr>
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">진료일시 : </span>
							</td> 
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">
								<input type="datetime-local" readonly class="form-control-plaintext" id="getdate" value="">
								</span>
							</td>                                                     
						</tr>                  
                      </tbody>
                    </table>           
                    </div>                     
                    <div class="modal-footer">
                        <button type="button" id="modifyBtn"class="btn btn-secondary">Modify</button>
                        <button type="button" id="deleteBtn" class="btn btn-primary">Delete</button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <!-- update Modal -->
                <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">진료예약 수정</h1>
                        <button type="button" id="closeBtn" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                      <input type="hidden" id="getcustomerNo" name="customerNo">
                      <table class="table align-items-center mb-0">								
                    	<tbody>
                    
                      <tr>
							<td class="align-middle text-center text-sm">
								<span class="text-secondary text-xs font-weight-bold">이름: </span>
							</td>
	                        <td class="align-middle text-center text-sm">
	                            <span class="text-secondary text-xs font-weight-bold">
	                            	<input type="text" readonly name="animalName" id="updateName" val="" class="form-control-plaintext">
	                            </span>
	                        </td> 
                      </tr>
                      
                      <tr>
						<td class="align-middle text-center text-sm">
							<span class="text-secondary text-xs font-weight-bold">진료의: </span>
						</td>
                      <td class="align-middle text-center text-sm">
                          <span class="text-secondary text-xs font-weight-bold">
	                          <select name='username' id="updateusername" class="form-select form-select-lg mb-3" aria-label="Large select example">                      
								<c:forEach items="${emplist}" var="a">
									<option value="${a.username}" >${a.empName}</option>
								</c:forEach>				
							  </select>
                          </span>
                      </td> 
                      </tr>
                      
                      <tr>
						<td class="align-middle text-center text-sm">
							<span class="text-secondary text-xs font-weight-bold">진료시간: </span>
						</td>
	                    <td class="align-middle text-center text-sm">
	                          <span class="text-secondary text-xs font-weight-bold">
	                          	<input type="datetime-local" id="modifyDate" val="">
	                          </span>
	                    </td> 
                      </tr>
                      </tbody>
                     </table>
                      </div>
                      <div class="modal-footer">
                        <button type="button" id="closeBtn"class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" id="updateBtn" class="btn btn-primary">Update</button>
                      </div>
                    </div>
                  </div>
                </div>
                

               </div>
               <!-- / Content -->
               <c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
               <div class="content-backdrop fade"></div>
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