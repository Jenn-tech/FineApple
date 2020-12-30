<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

</script>
<style>

.tab {
   overflow: hidden;
   border: 1px solid #ccc;
   background-color: #f1f1f1;
}

.tab>div {
   float: left;
   width: 120px;
   height: 50px;
   line-height: 50px;
   text-align: center;
   cursor: pointer;
   font-size: 17px;
}

.tab>div:hover {
   background-color: #ddd;
}

.tabcontent {
   padding: 10px;
   border: 1px solid #ccc;
   border-top: none;
   display: none;
}
</style>
</head>

<body>
   <div class="w3-center w3-large w3-margin-top">
      <h2>My Page</h2>
   </div>
   <hr>
   <div class="tab">
      <div class="tablink" onclick="changeTab(this);">회원정보</div>
      <div class="tablink" onclick="changeTab(this);">주문내역</div>
      <div class="tablink" onclick="changeTab(this);">쿠폰함</div>
      <div class="tablink" onclick="changeTab(this);">장바구니</div>
      
   </div>

   <div id="회원정보" class="tabcontent">
      <div class="w3-content w3-container w3-margin-top">
         <div class="w3-container w3-card-4">
            <div class="w3-center w3-large w3-margin-top">
               <h3>회원정보 수정</h3>
            </div>
            <div>

               <p>
                  <label>ID</label> <input class="w3-input" type="text" id="id"
                     name="id">
               </p>
               <p>
                  <label>Email</label> <input class="w3-input" type="text"
                     id="email" name="email" required>
               </p>
               <p class="w3-center">
                  <button type="submit"
                     class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보
                     변경</button>
               </p>
               <br />
               <form id="pwForm" action="../member/update_pw.do" method="post">
                  <input type="hidden" name="id" value="${ member.id }">
                  <p>
                     <label>Password</label> <input class="w3-input" id="old_pw"
                        name="old_pw" type="password" required>
                  </p>
                  <p>
                     <label>New Password</label> <input class="w3-input" id="pw"
                        name="pw" type="password" required>
                  </p>
                  <p>
                     <label>Confirm</label> <input class="w3-input" type="password"
                        id="pw2" type="password" required>
                  </p>
                  <p class="w3-center">
                     <button type="submit" id="joinBtn"
                        class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호
                        변경</button>
                  </p>
               </form>
            </div>
         </div>
      </div>
   </div>
   <div id="주문내역" class="tabcontent">
      <h3>주문내역</h3>
   
   </div>
<div id="쿠폰함" class="tabcontent">
   <h3>쿠폰함</h3>

</div>
<div id="장바구니" class="tabcontent">
   <h3>장바구니</h3>
   
</div>





<script>
    var tabs = document.getElementsByClassName('tablink');
    var content = document.getElementsByClassName('tabcontent');  
    changeTab(tabs[0]) //1. 
    function changeTab(obj){      
      for(var i=0;i<4;i++){
        tabs[i].style.backgroundColor="#f1f1f1";
        content[i].style.display="none"
      }
      obj.style.backgroundColor="#ccc";      
      var selectTab = document.getElementById(obj.innerHTML);
      selectTab.style.display="block";
    }
  </script>

</body>
</html>