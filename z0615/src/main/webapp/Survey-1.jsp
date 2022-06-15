<%@page import="com.bk.model.MemberVO"%>
<%@page import="com.bk.model.CampVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="01, 02, 03, 04, 05">
    <meta name="description" content="">
    <title>Survey 1</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Survey-1.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.14, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Survey 1">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
     <%
     	MemberVO mvo = new MemberVO();
   		mvo = (MemberVO)session.getAttribute("mvo");      		
	%>
  <header class="u-black u-clearfix u-header u-header" id="sec-9c89"><div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-body-alt-color u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-body-alt-color u-btn-1" href="Home.jsp" data-page-id="1685410431">BackTracking</a>
        </h1>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
    <ul class="u-nav u-unstyled u-nav-1">
    <li class="u-nav-item">
    <%if(mvo==null){ %>
    	<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-palette-1-light-1" href="Login.html" style="padding: 10px 20px;">Login</a>
    <%}else{ %>
    	<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-palette-1-light-1" href="#" style="padding: 10px 20px;"><%=mvo.getId()%>님 반갑습니다 </a>
    <%} %>        
	</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login.html">Login</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav><span class="u-file-icon u-icon u-text-white u-icon-1" data-href="filter2.jsp" data-page-id="199526782"><img src="images/1.png" alt=""></span>
      </div></header>
   <section class="u-align-left u-clearfix u-white u-section-1"
		id="sec-6854">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">01</h2>
			<div
				class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
			<h3 class="u-align-center u-text u-text-2">Q. 생각하는 것만으로도 마음이 설레는
				장소는?</h3>
			<div class="u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
							<button class="a">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-1"
									src="images/jhjh.jpg" data-image-width="407"
									data-image-height="407">
								<p class="u-text u-text-grey-50 u-text-3">파도소리 부서지는</p>
								<h4 class="u-text u-text-4" style="font-family:GowunBatang-Bold">해변</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
							<button class="a">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-2"
									src="images/e7780507-d457-1fb0-2cfa-e5d145d4686f.jpg"
									data-image-width="1200" data-image-height="800">
								<p class="u-text u-text-grey-50 u-text-5">공기 맑은</p>
								<h4 class="u-text u-text-6" style="font-family:GowunBatang-Bold">산</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
							<button class="a">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-3"
									src="images/2021072601317_1.jpg" data-image-width="960"
									data-image-height="640">
								<p class="u-text u-text-grey-50 u-text-7">발만 담궈도 즐거운</p>
								<h4 class="u-text u-text-8" style="font-family:GowunBatang-Bold">계곡</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
							<button class="a">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-4"
									data-image-width="550" data-image-height="366"
									src="images/da3e8cad-8252-c76d-6809-07c201264e2a.jpg">
								<p class="u-text u-text-grey-50 u-text-9">산과 바다를 잇는</p>
								<h4 class="u-text u-text-10" style="font-family:GowunBatang-Bold">강</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-5">
							<button class="a">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-5"
									data-image-width="560" data-image-height="373"
									src="images/d30f652f-3b77-9e44-b4b1-7a6e558a1e52.jpg">
								<p class="u-text u-text-grey-50 u-text-11">밤에도 활기넘치는</p>
								<h4 class="u-text u-text-12" style="font-family:GowunBatang-Bold">도심</h4>
						</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-left u-clearfix u-white u-section-2"
		id="sec-9b60">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">02</h2>
			<div
				class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
			<h3 class="u-align-center u-text u-text-2">Q. 어떤 의견이 가장 공감가나요?</h3>
			<div class="u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-container-style u-hover-feature u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-1">
							<button class="b">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-1"
									src="images/caravan2.jpeg" data-image-width="900"
									data-image-height="600">
								<p class="u-text u-text-3">내 집 째로 이동하고 싶어!</p>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-hover-feature u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white u-list-item-2">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<button class="b">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-2"
									src="images/cbcb2.jpg" data-image-width="630"
									data-image-height="420">
								<p class="u-text u-text-4">내 몸 누울 곳만 있으면 되지</p>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-hover-feature u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white u-list-item-3">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<button class="b">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-3"
									src="images/luxury.jpg"
									data-image-width="818" data-image-height="532">
								<p class="u-text u-text-5">캠핑은 럭셔리해야지!</p>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-hover-feature u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white u-list-item-4">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<button class="b">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-4"
									data-image-width="1200" data-image-height="625"
									src="images/classic.jpg">
								<p class="u-text u-text-6">캠핑은 정석대로 하고 싶어!</p>
						</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-left u-clearfix u-white u-section-3"
		id="sec-e4e9">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">03</h2>
			<div
				class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
			<h3 class="u-align-center u-text u-text-2">Q. 즐거운 여행!! 사랑하는
				반려동물과 함께 할 예정인가요?</h3>
			<div class="u-align-center u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-1">
							<button class="c">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-1"
									src="images/반려o.jpg" data-image-width="900"
									data-image-height="600">
								<p class="u-text u-text-3">네!!</p>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<button class="c">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-2"
									src="images/상관없.jpeg" data-image-width="630"
									data-image-height="420">
								<p class="u-text u-text-4">상관 없어요</p>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<button class="c">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-3"
									src="images/없좋.jpg"
									data-image-width="818" data-image-height="532">
								<p class="u-text u-text-5">없으면 좋겠어요</p>
						</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-left u-clearfix u-white u-section-4"
		id="sec-9901">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">04</h2>
			<div
				class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
			<h3 class="u-align-center u-text u-text-2">Q. 낯선 곳에서의 캠핑에도 빠질 수
				없는 것은?</h3>
			<div class="u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-1">
							<button class="d">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-1"
									src="images/전기.png" data-image-width="900"
									data-image-height="600">
								<h4 class="u-text u-text-3" style="font-family:GowunBatang-Bold">전기</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<button class="d">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-2"
									src="images/와이파이.png" data-image-width="630"
									data-image-height="420">
								<h4 class="u-text u-text-4" style="font-family:GowunBatang-Bold">와이파이</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<button class="d">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-3"
									src="images/온수1.png"
									data-image-width="818" data-image-height="532">
								<h4 class="u-text u-text-5" style="font-family:GowunBatang-Bold">온수</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<button class="d">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-4"
									data-image-width="1200" data-image-height="625"
									src="images/편의점.png">
								<h4 class="u-text u-text-6" style="font-family:GowunBatang-Bold">마트/편의점</h4>
						</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-left u-clearfix u-white u-section-5"
		id="sec-428a">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">05</h2>
			<div
				class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
			<h3 class="u-align-center u-text u-text-2">Q. 마지막으로, 좋아하는 분위기의
				태그를 골라주세요</h3>
			<div class="u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-1">
							<button class="e">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-1"
									src="images/여유있는.png" data-image-width="900"
									data-image-height="600">
								<h4 class="u-text u-text-3" style="font-family:GowunBatang-Bold">#여유있는</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<button class="e">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-2"
									src="images/깨끗한.jpg" data-image-width="630"
									data-image-height="420">
								<h4 class="u-text u-text-4" style="font-family:GowunBatang-Bold">#깨끗한</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<button class="e">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-3"
									src="images/아이놀기좋은.jpg"
									data-image-width="818" data-image-height="532">
								<h4 class="u-text u-text-5" style="font-family:GowunBatang-Bold">#아이들 놀기 좋은</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<button class="e">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-4"
									data-image-width="1200" data-image-height="625"
									src="images/별보기좋은.jpg">
								<h4 class="u-text u-text-6" style="font-family:GowunBatang-Bold">#별 보기 좋은</h4>
						</div>
						</button>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-video-cover u-white">
						<div
							class="u-container-layout u-similar-container u-container-layout-5">
							<button class="e">
								<img alt=""
									class="u-expanded-width u-image u-image-default u-image-5"
									data-image-width="1200" data-image-height="625"
									src="images/그늘많은.png">
								<h4 class="u-text u-text-7" style="font-family:GowunBatang-Bold">#그늘이 많은</h4>
						</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
	let q="";
		$('#sec-9b60').hide();
		$('#sec-e4e9').hide();
		$('#sec-9901').hide();
		$('#sec-428a').hide();

		$('.a').on('click', function() {
			$('#sec-6854').hide();
			$('#sec-9b60').show();
			
			q += $(this).children("h4").html()+"/";
					
		})
		
		$('.b').on('click', function() {
			$('#sec-9b60').hide();
			$('#sec-e4e9').show();
			
			q += $(this).children("p").html()+"/";
			
		})
		
		$('.c').on('click', function() {
			$('#sec-e4e9').hide();
			$('#sec-9901').show();
			
			q += $(this).children("p").html()+"/";
			
		})
		
		$('.d').on('click', function() {
			$('#sec-9901').hide();
			$('#sec-428a').show();
			
			q += $(this).children("h4").html()+"/";
			
		})
		
		$('.e').on('click', function() {			
			
			q += $(this).children("h4").html();
			
			$.ajax({
				url : "SurveyAjax",
				type : 'GET',
				data: {"q": q},
				success : function(res) {
					console.log('성공');
					location.href = 'GoResult';
				},

				error : function() {
					console.log('실패');
				}

			});
			
		})
		
	</script>
</body>
</html>