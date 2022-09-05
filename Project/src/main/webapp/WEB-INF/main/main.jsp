<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- CSS files -->
<link href="${cpath}/css/tabler.css" rel="stylesheet" />
<link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="${cpath}/js/tabler.min.js" defer></script>
<!-- my -->
<link rel="stylesheet" href="${cpath}/css/my/indexmy.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body>
	  <div class="page">
    <div class="page-main bgbg">
      <div class="wrap">
        <header class="navbar navbar-expand-md">
          <div class="container">
            <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
              <a href="#">
                <img src="${cpath }/img/my/logo.png"  alt="Logo"  width="90rem" height="auto" >
              </a>
            </h1>
			<!-- 로그인 했음 -->
			
			<div class="navbar-nav flex-row order-md-last">
			<c:if test="${!empty mvo}">
            <div class="d-none d-md-flex">
              <div class="nav-item dropdown d-none d-md-flex me-3">
                <a href="#" class="nav-link px-0" data-bs-toggle="dropdown" tabindex="-1"
                  aria-label="Show notifications">
                  <!-- Download SVG icon from http://tabler-icons.io/i/bell -->
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                    stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M10 5a2 2 0 0 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" />
                    <path d="M9 17v1a3 3 0 0 0 6 0v-1" />
                  </svg>
                  <span class="badge bg-red"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-end dropdown-menu-card">
                  <div class="card">
                    <div class="card-header">
                      <h3 class="card-title">Last updates</h3>
                    </div>
                    <div class="list-group list-group-flush list-group-hoverable">
                      <div class="list-group-item">
                        <div class="row align-items-center">
                          <div class="col-auto"><span class="status-dot status-dot-animated bg-red d-block"></span>
                          </div>
                          <div class="col text-truncate">
                            <a href="#" class="text-body d-block">Example 1</a>
                            <div class="d-block text-muted text-truncate mt-n1">
                              Change deprecated html tags to text decoration classes
                              (#29604)
                            </div>
                          </div>
                          <div class="col-auto">
                            <a href="#" class="list-group-item-actions">
                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-muted" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                              </svg>
                            </a>
                          </div>
                        </div>
                      </div>
                      <div class="list-group-item">
                        <div class="row align-items-center">
                          <div class="col-auto"><span class="status-dot d-block"></span></div>
                          <div class="col text-truncate">
                            <a href="#" class="text-body d-block">Example 2</a>
                            <div class="d-block text-muted text-truncate mt-n1">
                              justify-content:between ⇒ justify-content:space-between
                              (#29734)
                            </div>
                          </div>
                          <div class="col-auto">
                            <a href="#" class="list-group-item-actions show">
                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-yellow" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                              </svg>
                            </a>
                          </div>
                        </div>
                      </div>
                      <div class="list-group-item">
                        <div class="row align-items-center">
                          <div class="col-auto"><span class="status-dot d-block"></span></div>
                          <div class="col text-truncate">
                            <a href="#" class="text-body d-block">Example 3</a>
                            <div class="d-block text-muted text-truncate mt-n1">
                              Update change-version.js (#29736)
                            </div>
                          </div>
                          <div class="col-auto">
                            <a href="#" class="list-group-item-actions">
                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-muted" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                              </svg>
                            </a>
                          </div>
                        </div>
                      </div>
                      <div class="list-group-item">
                        <div class="row align-items-center">
                          <div class="col-auto"><span class="status-dot status-dot-animated bg-green d-block"></span>
                          </div>
                          <div class="col text-truncate">
                            <a href="#" class="text-body d-block">Example 4</a>
                            <div class="d-block text-muted text-truncate mt-n1">
                              Regenerate package-lock.json (#29730)
                            </div>
                          </div>
                          <div class="col-auto">
                            <a href="#" class="list-group-item-actions">
                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-muted" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                              </svg>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="nav-item dropdown" id="user-box">
              <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown"
                aria-label="Open user menu">
                <span class="avatar avatar-sm" style="background-image: url(./static/avatars/000m.jpg)"></span>
                <div class="d-none d-xl-block ps-2">
                  <div>${mvo.u_nick }</div>
                  <div class="text-muted mt-1"><small>${mvo.u_grade }</small></div>
                </div>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
	              <c:choose>
	              <c:when test="${mvo.u_grade == 'admin' }">
                 	 <a href="${cpath}/memberlist.do?" class="dropdown-item">Admin Page</a>
                 </c:when>
                 <c:otherwise>
                	 <a href="${cpath}/mypage.do?" class="dropdown-item">My account</a>
                 </c:otherwise>
                 </c:choose>
                  <div class="dropdown-divider"></div>
                  <a href="${cpath}/logout.do" class="dropdown-item">Logout</a>
              </div>
            </div>
            </c:if>
            
			<!-- 로그인 하기전 -->
			<c:if test="${empty mvo}">
			<div class="mt-2" id="loginbtn">
					<button  class="btn btn-light" onclick="location.href='${cpath}/loginForm.do'">Login</button>
					<button  class="btn btn-light" onclick="location.href='${cpath}/joinForm.do'">회원가입</button>
				</div>
 			</c:if>
              <!-- c:if -->
            </div>
            <div class="collapse navbar-collapse" id="navbar-menu">
              <div class="d-flex flex-column flex-md-row flex-fill align-items-stretch align-items-md-center">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="${cpath }/map.do">
                      <span class="nav-link-title">
                        Maps
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" href="${cpath}/weeklyView.do">
                      <span class="nav-link-title">
                        주간인기검색어
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="${cpath}/youtubelist.do">
                      <span class="nav-link-title">
                        Youtube Archive
                      </span>
                    </a>
                  </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" aria-expanded="false">
                    <span class="nav-link-title">
                      자유게시판
                    </span>
                  </a>
                  <div class="dropdown-menu dropdown-menu">
                    <div class="dropdown-menu-columns">
                      <div class="dropdown-menu-column">
                        <a class="dropdown-item" href="${cpath }/zwlist.do?page=1">
                          제로웨이스트
                        </a>
                        <a class="dropdown-item" href="${cpath }/imgList.do">
                          Gallery
                        </a>
                        <a class="dropdown-item" href="#">
                          함께해요
                        </a>
                        <a class="dropdown-item" href="${cpath }/gradeList.do">
                          등급제게시판
                        </a>
                      </div>
                      </div>
                    </div>
                  </li>
                <li class="nav-item active dropdown">
                  <a class="nav-link dropdown-toggle" href="#navbar-layout" role="button" aria-expanded="false">
                    <span class="nav-link-title ">
                      정보게시판
                    </span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-arrow">
                    <div class="dropdown-menu-columns">
                      <div class="dropdown-menu-column">
                        <a class="dropdown-item" href="${cpath}/callist.do">
                          칼럼 Archive
                        </a>
                        <a class="dropdown-item" href="${cpath}/buylist.do">
                          공동구매
                        </a>
                      </div>
                    </div>
                    </div>
                  </li>

                </ul>
              </div>
            </div>
          </div>
        </header>
      </div>
      <div class="bg-area-wrap">
	
        <div class="container main-d">
          <div class="row">
            <div class="col-4">
              <span class="text-light main-text">TOGETHER</span>

            </div>
            <div class="col ">
              <div class="main-img-1"></div>
            </div>
            <div class="col-2">
              <span class="main-text float-xxl-end">VEGAN</span>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <div class="main-img-2"></div>
            </div>
            <div class="col-6">
              <span class="text-light main-text float-xxl-end">WE CAN SAVE</span>
            </div>
          </div>
        </div>
      </div>
      <div class="bg-img">
      </div>
      <!--검정배경끝-->
      <div class="container-wrap ">
        <div class="container ">
          <div class="container pt-4 pb-4">
            <div class="page-header pb-3">
              <div class="row align-items-center mb-3">
                <div class="co my-title">
                  <h2 class="page-title ">
                    <span>Weekely Best</span>&nbsp;Posts
                  </h2>
                  <!-- <div class="wd ud"></div> -->
                </div>
                <div class="col-auto ms-auto">
                  <div class="btn-list">
                    <span class="d-none d-sm-inline">
                      <a href="#" class="btn border-blue text-blue btn-outline-blue rdm-btn mt-3">
                        ReadMore +
                      </a>
                    </span>
                  </div>
                </div>
              </div>
              <div class="row">

              </div>

            </div>
            <div class="row mb-3">
              <div class="col-md-3">
                <div class="card">
                  <div class="card-status-start bg-blue"></div>
                  <div class="card-body">
                    <h3 class="card-title text-truncate"><a href="#" class="text-truncate">Card with side status
                        orem
                        ipsum d</a>
                    </h3>
                    <div class="text-muted mb-1 hei">Lorem ipsum dolor sit amet, consectetur adipisicing
                      elit.
                      Aperiam deleniti
                      fugit incidunt,
                      iste, itaque minima
                      neque pariatur perferendis sed suscipit velit vitae voluptatem.</div>
                    <p class="text-muted text-end"><small>2022-01-01</small></p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="card">
                  <div class="card-status-start bg-blue"></div>
                  <div class="card-body">
                    <h3 class="card-title text-truncate"><a href="#" class="text-truncate">Card with side status
                        orem
                        ipsum d</a>
                    </h3>
                    <div class="text-muted mb-1 hei">Lorem ipsum dolor sit amet, consectetur adipisicing
                      elit.
                      Aperiam deleniti
                      fugit incidunt,
                      iste, itaque minima
                      neque pariatur perferendis sed suscipit velit vitae voluptatem.</div>
                    <p class="text-muted text-end"><small>2022-01-01</small></p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="card">
                  <div class="card-status-start bg-blue"></div>
                  <div class="card-body">
                    <h3 class="card-title text-truncate"><a href="#" class="text-truncate">Card with side status
                        orem
                        ipsum d</a>
                    </h3>
                    <div class="text-muted mb-1 hei">Lorem ipsum dolor sit amet, consectetur adipisicing
                      elit.
                      Aperiam deleniti
                      fugit incidunt,
                      iste, itaque minima
                      neque pariatur perferendis sed suscipit velit vitae voluptatem.</div>
                    <p class="text-muted text-end"><small>2022-01-01</small></p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="card">
                  <div class="card-status-start bg-blue"></div>
                  <div class="card-body">
                    <h3 class="card-title text-truncate"><a href="#" class="text-truncate">Card with side status
                        orem
                        ipsum d</a>
                    </h3>
                    <div class="text-muted mb-1 hei">Lorem ipsum dolor sit amet, consectetur adipisicing
                      elit.
                      Aperiam deleniti
                      fugit incidunt,
                      iste, itaque minima
                      neque pariatur perferendis sed suscipit velit vitae voluptatem.</div>
                    <p class="text-muted text-end"><small>2022-01-01</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container mb-45">
        <div class="row mt-4">
          <div class="col my-title">
            <h2 class="page-title">
              &nbsp;함께해요!🌿<span>진행중인 Challenge</span>
            </h2>
            <div class="ud"></div>
          </div>
          <div class="col-auto ms-auto mt-3">
            <div class="btn-list">
              <span class="d-none d-sm-inline">
                <a href="#" class="btn border-blue text-blue btn-outline-blue rdm-btn" id="">
                  더보기 +
                </a>
              </span>
            </div>
          </div>
        </div>
        <div class="row mt-4">
          <div class="col-sm-4 col-lg-4">
            <div class="card card-sm">
              <a href="#" class="d-block"><img src="./dist/img/my/chal-1.png" alt="gallary-img-1"
                  class="card-img-top"></a>
              <div class="card-body">
                <div class="d-flex align-items-center">
                  <div class="text-truncate">
                    <div class="text-truncate">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed</div>
                    <div class="text-muted float-sm-end mt-1">3 days ago</div>
                    <div class="ms-auto -sm-end mt-2">
                      <a href="#" class="text-muted">
                        <!-- Download SVG icon from http://tabler-icons.io/i/eye -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                          stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                          stroke-linejoin="round">
                          <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                          <circle cx="12" cy="12" r="2"></circle>
                          <path
                            d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7">
                          </path>
                        </svg>
                        467
                      </a>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="col-md ms-3">
            <div class="card">
              <a href="#">
                <div class="card-img-top img-responsive img-responsive-4x3"
                  style="background-image: url(./dist/img/my/sample.jpg)"></div>
              </a>
              <div class="card-body">
                <h3 class="card-title">Card with top image</h3>
                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit
                  incidunt,
                  iste, itaque minima
                  neque pariatur perferendis sed suscipit velit vitae voluptatem.</p>
              </div>
            </div>
          </div>
          <div class="col-md mt-3">
            <div class="card">
              <div class="card-body">
                <h3 class="card-title">Card with bottom image</h3>
                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit
                  incidunt,
                  iste, itaque minima
                  neque pariatur perferendis sed suscipit velit vitae voluptatem.</p>
              </div>
              <a href="#">
                <div class="card-img-bottom img-responsive img-responsive-16x9"
                  style="background-image: url(./dist/img/my/sub-bg.jpg)"></div>
              </a>
            </div>
          </div>
          <div class="col-md">
            <div class="card">
              <a href="#">
                <div class="card-img-top img-responsive img-responsive-4x3"
                  style="background-image: url(./dist/img/my/sample2.jpg)"></div>
              </a>
              <div class="card-body">
                <h3 class="card-title">Card with top image</h3>
                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit
                  incidunt,
                  iste, itaque minima
                  neque pariatur perferendis sed suscipit velit vitae voluptatem.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
    <!--검정배경-->
    <div class="container-wrap bl py-3">
      <div class="container">
        <div class="row">
          <div class="col-4">
            <span class="main-text">ZEROWASTE</span>

          </div>
          <div class="col ">
            <div class="main-img-3"></div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="main-img-4"></div>
          </div>
          <div class="col-5">
            <span class="text-light main-text float-xxl-end">THE PLANET.</span>
          </div>
          <div class="col">
            <div class="bg-text">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna
              aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
              consequat.

            </div>
          </div>
        </div>
      </div>
		<jsp:include page="../../footer/footer.jsp" />
    </div>
  </div>
	
	
	
</body>
</html>