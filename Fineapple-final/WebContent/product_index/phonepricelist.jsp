<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<c:forEach var = "vo" items = "${productList }">
 <figure class="product">
                <img src="${vo.pictureUrl }" width="250px" height="230px" />
                <figcaption>
                  <h3>  더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="${vo.linkUrl }"></a>
                <div id="detail">${vo.name}</br><fmt:formatNumber value="${vo.price }" pattern="#,###" /></div>
</figure>
	</c:forEach>

             