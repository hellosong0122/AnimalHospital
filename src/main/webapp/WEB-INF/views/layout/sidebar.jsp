<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!-- Menu -->
<sec:authentication property="Principal" var="user"/>
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="/" class="app-brand-link">
              <span class="app-brand-logo demo">
              
               <!--  <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                > -->
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"
                    ></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"
                    ></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"
                    ></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"
                    ></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                        >
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2">
              <img src="/resources/images/finallogo2.png" alt="로고" style="width: 250px; height: 110px;">
              </span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>
          <br>
          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item active">
              <a href="/" class="menu-link">
              <img src="/resources/images/menu/home2.png">
              &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Analytics">HOME</div>
              </a>
            </li>

<!--             Layouts
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-layout"></i>
                <div data-i18n="Layouts">Layouts</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="layouts-without-menu.html" class="menu-link">
                    <div data-i18n="Without menu">Without menu</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-without-navbar.html" class="menu-link">
                    <div data-i18n="Without navbar">Without navbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-container.html" class="menu-link">
                    <div data-i18n="Container">Container</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-fluid.html" class="menu-link">
                    <div data-i18n="Fluid">Fluid</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-blank.html" class="menu-link">
                    <div data-i18n="Blank">Blank</div>
                  </a>
                </li>
              </ul>
            </li> -->

<!--             <li class="menu-header small text-uppercase">
              <span class="menu-header-text">ADMIN</span>
            </li> -->
            
         <c:if test="${user.positionNo == 1}">   
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <img src="/resources/images/menu/team.png">
                &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Account Settings">조직관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/emp/empList" class="menu-link">
                    <div data-i18n="Account">사원관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/dept/deptList" class="menu-link">
                    <div data-i18n="Notifications">부서관리</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              	<a href="/apFormat/list" class="menu-link">
              	<img src="/resources/images/menu/clipboard.png">
              	&nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Authentications">전자결재관리</div>
              </a>
            </li>
         </c:if>   
            <!-- Components -->
            <!-- <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li> -->
            <!-- User interface -->
            
           <!--  <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li>   -->          
            <!-- Cards -->
            <li class="menu-item">
              <a href="/customer/list" class="menu-link">
              <img src="/resources/images/menu/catanddog.png">
              &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Basic">고객관리</div>
              </a>
            </li>
            
            <!-- Components -->
            <!-- <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li> -->
            <!-- User interface -->
            
           <!--  <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li>   -->          
            <!-- Cards -->
            <li class="menu-item">
              <a href="/hospitalize/list" class="menu-link">
              <img src="/resources/images/menu/treat2.png">
              &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Basic">입원실관리</div>
              </a>
            </li>
            
              
            <!-- Extended components -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
              <img src="/resources/images/menu/needle.png">
              &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Extended UI">예약</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/treatment/schedule" class="menu-link">
                    <div data-i18n="Perfect Scrollbar">진료예약</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/surgery/schedule" class="menu-link">
                    <div data-i18n="Text Divider">수술예약</div>
                  </a>
                </li>                             
              </ul>
            </li>
            
             
            
            <!-- <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li> -->
            
            <!-- Extended components -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
              <img src="/resources/images/menu/calendar2.png">
              &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Extended UI">근무</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/attendance/list" class="menu-link">
                    <div data-i18n="Perfect Scrollbar">근태관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/work/workList" class="menu-link">
                    <div data-i18n="Text Divider">인사행정</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="extended-ui-text-divider.html" class="menu-link">
                    <div data-i18n="Text Divider">내과</div>
                  </a>
                </li>     
                 <li class="menu-item">
                  <a href="extended-ui-text-divider.html" class="menu-link">
                    <div data-i18n="Text Divider">외과</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="extended-ui-text-divider.html" class="menu-link">
                    <div data-i18n="Text Divider">영상과</div>
                  </a>
                </li>  
                 <li class="menu-item">
                  <a href="extended-ui-text-divider.html" class="menu-link">
                    <div data-i18n="Text Divider">간호과</div>
                  </a>
                </li>                                                           
              </ul>
            </li>
            
            <li class="menu-item">
            <sec:authentication property="Principal" var="emp"/>
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <img src="/resources/images/menu/inbox.png">
                &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Extended UI">전자결재</div>
              </a>
              <ul class="menu-sub">            
	            <li class="menu-item">
	              <a href="/approval/formatList" class="menu-link">
	                <div data-i18n="Basic">기안서 작성</div>
	              </a>
	            </li> 
	            <li class="menu-item">
	              <a href="/approval/draftList/${emp.username}" class="menu-link">
	                <div data-i18n="Basic">기안함</div>
	              </a>
	            </li>
	            <li class="menu-item">
	              <a href="/approval/approverList/${emp.username}" class="menu-link">
	                <div data-i18n="Basic">결재함</div>
	              </a>
	            </li>
           	 </ul>
            </li>
            <!-- <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li>  -->           
            <li class="menu-item">
              <a href="/medicine/list" class="menu-link">
              	<img src="/resources/images/menu/pill.png">
              	&nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Basic">약품관리</div>
              </a>
            </li>   
            
            <!-- Components -->
            <!-- <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li> -->
            <!-- User interface -->
            
           <!--  <li class="menu-header small text-uppercase"><span class="menu-header-text">CATEGORY</span></li>   -->          
            <!-- Cards -->
            <li class="menu-item">
              <a href="/notice/noticeList" class="menu-link">
              <img src="/resources/images/menu/note.png">
              &nbsp&nbsp&nbsp&nbsp&nbsp
                <div data-i18n="Basic">공지사항</div>
              </a>
            </li>
           
			
          </ul>
        </aside>
        <!-- / Menu -->