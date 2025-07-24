<%@ page import="models.Product" %>
<%@ page import="dao.ProductDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/productlist.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">

  <title>Katalog</title>
</head>
<body>
  <%@include file="/components/header.jsp" %>
  <main class="page-wrapper">
    <section id="best" class="katalog">
      <h2 class="heading1">Katalog</h2>

      <div class="product-list">
      	<% ProductDao productDAO = new ProductDao(); %>
		
		<% for (Product p: productDAO.getAllProducts()) { %>
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X">
          <main class="product-card-body">
            <h3><%= p.getName() %></h3>
            <span><%= p.getPrice() %> €</span>
            <div>⭐⭐⭐</div>
          </main>
        </div>
        <% } %>
          </div>
         
    </section>
  </main>
<%@ include file="/components/footer.jsp" %>
</body>
</html>
