<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.net.InetAddress"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- ======= #27. tile1 중 header 페이지 만들기 (#26.번은 없다 샘이 장난침.) ======= --%>
<%
	String ctxPath = request.getContextPath();

	// === #165. (웹채팅관련3) === 
	// === 서버 IP 주소 알아오기(사용중인 IP주소가 유동IP 이라면 IP주소를 알아와야 한다.) ===
	InetAddress inet = InetAddress.getLocalHost(); 
	String serverIP = inet.getHostAddress();
	
	System.out.println("serverIP : " + serverIP);
	// serverIP : 192.168.56.65
	
	// String serverIP = "192.168.50.65"; 만약에 사용중인 IP주소가 고정IP 이라면 IP주소를 직접입력해주면 된다.
	
	// === 서버 포트번호 알아오기   ===
	int portnumber = request.getServerPort();
	System.out.println("portnumber : " + portnumber);
	// portnumber : 9090
	
	String serverName = "http://"+serverIP+":"+portnumber; 
	System.out.println("serverName : " + serverName);
	//serverName : http://192.168.50.65:9090 
%>

 <!-- Header Section Begin -->
    <header class="header--normal">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                <!-- 로고 -->
                    <div class="header__logo">
                        <a href="./index.html"><img src="<%=ctxPath %>/resources/img/Logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                    <!-- 헤더 기능 버튼 -->
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="<%=ctxPath %>/index.food">Home</a></li>
                                <li><a href="<%=ctxPath %>/storeBoard/storeMain.food">식당게시판</a></li>
                                <li><a href="#">유저게시판</a></li>
                            </ul>
                        </nav>
                        <!-- 유저모양 로그인 버튼 -->
                        <div class="header__menu__right">
                            <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    
    <!-- 검색 기능 및 메인화면 로딩시 출력문장 -->
    <section class="hero set-bg" data-setbg="<%=ctxPath %>/resources/img/hero/hero-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__text">
                    
                    <!-- 머릿말 -->
                        <div class="section-title">
                            <h2 style="margin-top: 20px;">솔직한 리뷰, 믿을 수 있는 평점! <br>Foodie</h2>
                        </div>
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="select__option">
                                    <select>
                                        <option value="" >지역</option>
                                    </select>
                                </div>
                                <div class="select__option">
                                    <select>
                                        <option value="">세부지역</option>
                                    </select>
                                </div>
                                <input type="text" placeholder="지역,식당 또는 음식">
                                <button type="submit">검색</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Header Section End -->
    
 <!-- Js Plugins -->
    <script src="<%=ctxPath %>/resources/js/jquery-3.3.1.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/jquery.nice-select.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/jquery-ui.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/jquery.nicescroll.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/jquery.barfiller.js"></script>
    <script src="<%=ctxPath %>/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/jquery.slicknav.js"></script>
    <script src="<%=ctxPath %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=ctxPath %>/resources/js/main.js"></script>
    