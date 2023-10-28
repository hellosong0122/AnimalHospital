<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- 날짜포맷 라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
			<div class="layout-page">
				<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
				<!-- Content wrapper -->
				<div class="content-wrapper">	
					<!-- Content -->
					<!-- 내용부분-->
					<div class="container-xxl flex-grow-1 container-p-y">
					
					<input type="hidden" id="apNo" name="apNo" value="${approvalVO.apNo}">
					<input type="hidden" id="apKind" name="apKind" value="${approvalVO.apKind}">
					
					<p>
					        <br>
					    </p>
					    <div style="padding: 5px; text-align: center; width: 730px; height: 1000px; border-style: solid; border-color: rgb(0, 0, 0); border-width: 1px; margin: auto;" class="apFormat1" id="apFormat1">
					        <div class="formatKind" style="padding:5px;text-align:left;width:677px;height:102px;margin:auto;">
					            <h1 style="text-align:center;margin-top:25px;"><span style="font-weight:bold;font-family:바탕;font-size:36pt;">품&nbsp;의&nbsp;서</span></h1>
					        </div>
					
					        <table class="signPlace" cellspacing="0" cellpadding="0" border="1" style="margin-right:27px; width:318px;height:123px;font-size:10pt;border-width:0px;border-color:rgb(0, 0, 0);border-collapse:collapse;border-style:solid;background-color:rgb(255, 255, 255);" align="right">
					            <tbody>
					                <tr class="signPosition">
					                    <td style="width: 38px; height: 121px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);" colspan="1" rowspan="3">
					                        <p style="text-align:center"><span>결</span></p>
					                        <p style="text-align:center"><span>재</span></p>
					                    </td>
					                    <td class="signPosition" style="width: 94px; height: 20px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center"><span>기&nbsp;안&nbsp;자</span></p>
					                    </td>
					                    <td class="signPosition" style="width: 94px; height: 20px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                    <td class="signPosition" style="width: 94px; height: 20px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                </tr>
					                <tr>
					                    <td class="signImgPlace" style="width: 94px; height: 60px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                    <td class="signImgPlace" style="width: 94px; height: 60px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                    <td class="signImgPlace" style="width: 94px; height: 60px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                </tr>
					                <tr>
					                    <td class="signDate" style="width: 94px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                            ${approvalVO.name}
					                        </p>
					                    </td>
					                    <td class="signDate" style="width: 94px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                    <td class="signDate" style="width: 94px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                            <br>
					                        </p>
					                    </td>
					                </tr>
					            </tbody>
					        </table>
					 
					        <p><br></p><p><br></p><p><span style="text-align: left; background-color: var(--bs-body-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight);">&nbsp;</span><br></p><p style="text-align:left"><br>
					        </p>
					        <p style="text-align:left"><span>&nbsp; &nbsp; &nbsp;</span><span>1. 작 성 자</span></p>
					
					        <table class="userInfo" cellspacing="0" cellpadding="0" border="1" style="width:676px;height:91px;font-size:10pt;border-width:0px;border-color:rgb(0, 0, 0);border-collapse:collapse;border-style:solid;background-color:rgb(255, 255, 255);" align="center">
					            <tbody>
					                <tr>
					                    <td style="width: 97px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center"><span>부&nbsp; &nbsp; &nbsp;서</span></p>
					                    </td>
					                    <td style="width: 239px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p>
					                            ${approvalVO.positionName}
					                        </p>
					                    </td>
					                    <td style="width: 96px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center">직&nbsp; &nbsp; &nbsp;급</p>
					                    </td>
					                    <td style="width: 240px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p>
					                            ${approvalVO.deptName}
					                        </p>
					                    </td>
					                </tr>
					                <tr>
					                    <td style="width: 97px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center"><span>성&nbsp; &nbsp;&nbsp; 명</span></p>
					                    </td>
					                    <td style="width: 239px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p>
					                            ${approvalVO.name}
					                        </p>
					                    </td>
					                    <td style="width: 96px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center">기안일자</p>
					                    </td>
					                    <td style="width: 240px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p>
					                            ${approvalVO.apCDate}
					                        </p>
					                    </td>
					                </tr>
					                <tr>
					                    <td style="width: 97px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center"><span>제&nbsp; &nbsp; &nbsp;목</span></p>
					                    </td>
					                    <td style="width: 578px; height: 30px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;" colspan="3" rowspan="1">
					                        <p style="text-align:left">
					                            ${approvalVO.apTitle}
					                        </p>
					                    </td>
					                </tr>
					            </tbody>
					        </table>
					
					        <p class="tableTitle02" style="text-align:left"><span font-size:10pt;font-weight:700;text-align:left"="">&nbsp; &nbsp; &nbsp;</span></p><p class="tableTitle02" style="text-align: left; margin-left: 25px;"><span>2. 기 안 내 용</span></p>
					        <table class="contentsPlace" cellspacing="0" cellpadding="0" border="1" style="width: 673px; height: 290px; font-size: 10pt; border-width: 0px; border-color: rgb(0, 0, 0); border-collapse: collapse; border-style: solid; background-color: rgb(255, 255, 255); background-image: none; background-repeat: repeat; background-position: 0% 0%;" align="center">
					            <tbody>
					                <tr>
					                    <td class="contentsTitle" style="width: 78px; height: 289px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid; background-color: rgb(204, 204, 204);">
					                        <p style="text-align:center;line-height:180%"><span>품의 사유</span></p>
					                        <p style="text-align:center;line-height:180%"><span>및</span></p>
					                        <p style="text-align:center;line-height:180%"><span>상세 내역</span></p>
					                    </td>
					                    <td style="width: 594px; height: 289px; border-width: 1px; border-color: rgb(0, 0, 0); border-style: solid;">
					                        <p style="text-align:center">
					                        	${approvalVO.apContents}
					                        </p>
					                    </td>
					                </tr>
					            </tbody>
					        </table>
					
					        <div class="contentsFoot">
					            <p><span style="font-size:11pt"><br></span></p><p><span style="font-size:11pt">위와 같은 사유로 품의서를 제출하오니 허가하여</span><span style="font-size:11pt">&nbsp;주시기 바랍니다.</span></p>
					
					            <p><span style="font-size:11pt"><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${approvalVO.apCDate}"/><br></span></p>
					
					            <p><span style="font-size:11pt">기&nbsp;</span><span style="font-size:11pt">안&nbsp;</span><span style="font-size: 10pt;">자 :&nbsp; &nbsp; &nbsp; ${approvalVO.name} &nbsp; &nbsp; &nbsp;</span><span style="font-size: 10pt;">(인)<span id="_SESpan_StartCaret" style="display: none;"></span></span>
					            </p>
					        </div>
					    </div>
					
					    <p>&nbsp;</p>


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