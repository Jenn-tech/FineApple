<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
<html lang="ko"> 
<head>
  <meta charset="UTF-8">
  <title>test</title>
  
  <style>
    /** 배경 지정 */
    body {
        background: #252422;
}

    /** 목록 스타일 초기화 및 중앙 배치, 가로 폭 지정 */
    ul {
        padding: 0;
        margin: 50px auto;
        list-style: none;
        width: 800px;
}

    /** 제목 영역의 초기화 처리 */
    .title {
        padding: 0;
        margin: 0;
        border: 1px solid #000;
}

    /** 링크의 클릭 영역 확대 및 배경 및 폰트 처리 */
    .title > a {
        display: block;
        padding: 2px;
        font-size: 14px;
        font-weight: bold;
        text-indent: 12px;
        text-decoration: none;
        color: white;
        height: 32px;
        line-height: 32px;
        background: #8f8f8f;
        border-radius: 5px;
        -webkit-border-radius: 5px;
        
        /*그라디언트 지정*/
        background: linear-gradient(top, #cecece 0%, #8f8f8f 100%);
        background: -moz-linear-gradient(top, #cecece, #8f8f8f);
        background: -webkit-gradient(linear, left top, left bottom, from(#cecece), to(#8f8f8f));
    }

    /** 현재 활성화된 요소에 적용할 배경이미지 지정 */
    .selected {
        background: #2288dd !important;
        color: #fff !important;
        
        /*그라디언트 지정*/
        background: linear-gradient(top, #6bb2ff 0%, #2288dd 100%) !important;
        background: -moz-linear-gradient(top, #6bb2ff, #2288dd) !important; 
        background: -webkit-gradient(linear, left top, left bottom, from(#6bb2ff), to(#2288dd)) !important;       
    }
    
    /** 내용 영역 */
    .content {
        margin: 0;
        background: #D4D0C8;
        padding: 10px;
        height: 200px;
        overflow-y: auto;
        border-radius: 5px;
        -webkit-border-radius: 5px;
}



  </style>

  <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
  <script>
    $(document).ready(function(){
        
        /** 초기화 처리*/

        // 첫 번재 항목이 펼쳐져 있도록 처리
        $(".collapsible:eq(0) a").addClass("selected"); //첫번째 항목만 selected 클래스를 적용
        $(".collapsible").not(":eq(0)").find(".content").hide(); //첫번째 항목 이외의 content를 숨김
        
        /** 링크에 대한 클릭 이벤트 처리 */
        $(".collapsible .title a").click(function() {            
            $(this).toggleClass("selected");
            //클릭된 나 자신을 제외한 나머리 링크들은 slected 클래스를 무조건 제거
            $(".collapsible .title a").not(this).removeClass("selected"); 

            // 펼칠 내용 영역 선택
            var target = $(this).parents(".collapsible").find(".content");

            // 나머지 내용 영역을 선택
            var other = $(".collapsible .title a").not(this)
                                                  .parents(".collapsible").find(".content");

            // 애니메이션으로 열고 닫기 처리
            target.slideToggle(300);
            other.slideUp(300);
            
            // 링크 페이지 이동 중지
            return false;
        });
    });
  </script>

 </head>
 <body>
    <ul>
        <li class="collapsible">
            <h2 class="title"><a href="#html5">HTML5란 무엇인가요?</a></h2>
            <p class="content">HTML5는 HTML4을 더욱 발전시킨 마크업 언어입니다. 하지만 HTML4에서 단순히 이미지나 텍스트를 표시하던 수준에서 벗어나 화면 상에서 그림을 그리는 등 더 많은 기능을 추가한 마크업 언어입니다. 또한 HTML5는 단순히 마크업 언어로서의 기능 뿐만 아니라 자바스크립트를 사용해 프로그램을 만들 수 있는 API까지 포함하고 있습니다.</p>
        </li>
        <li class="collapsible">
            <h2 class="title"><a href="#css3">CSS3란 무엇인가요?</a></h2>
            <p class="content">CSS는 웹 디자인이나 웹 개발에 있어서 핵심적인 요소입니다. 특히 현재 개발 중인 CSS3는 기존의 CSS에서는 할 수 없던 여러 가지 효과를 쉽게 만들 수 있고 CSS3만으로도 간단한 애니메이션을 만들 수도 있고 멋진 내비게이션을 만들 수 있기 때문에 더욱 주목을 받고 있습니다.</p>
        </li>
        <li class="collapsible">
            <h2 class="title"><a href="#api">HTML5 API 란?</a></h2>
            <p class="content">HTML5에는 웹 애플리케이션 제작을 위한 API들이 다양하게 제시되고 있습니다. API를 이해하기 위해서는 자바스크립트 문법 뿐만 아니라 DOM(Document Object Model)에 대한 기본 지식이 필요합니다.</p>
        </li>
    </ul>
 </body>
</html>
