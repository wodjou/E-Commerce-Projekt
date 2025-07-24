<%@page import="models.Product"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/ProductDetails.css">

  <title>Startseite</title>
</head>
<body>
  <%@include file="/components/header.jsp" %>
  <main class="page-wrapper">
    <section class="product-detail">
      <div class="product-image-container">
        <img
          class="product-image"
          src="<%= request.getContextPath() %>/images/hero-image.jpg"
          alt="Product Detail image"
        >
      </div>
      <div class="product-characteristics">
        <h1>Name of Product</h1>
        <p>Verfügbare Farben:</p>
        <div class="product-colors">
          <span class="product-color"></span>
          <span class="product-color"></span>
          <span class="product-color"></span>
          <span class="product-color"></span>
          <span class="product-color"></span>
          <span class="product-color"></span>
        </div>
        <div class="product-price">988,85 €</div>
      </div>
    </section>
    
    <section class="">
      <h2 class="heading1">Ähnliche Produkte</h2>
      <div class="product-list"> 
		<%!ProductDao productDao = new ProductDao();%>
		
		<% for (Product p: productDao.getAllProducts()) { %>
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X">
          <main class="product-card-body">
            <h3><%= p.getName() %></h3>
            <span><%= p.getPrice() %> €</span>
            <div>⭐⭐⭐</div>
            <div><%= p.getDescription() %></div>
          </main>
        </div>
        <% } %>
      </div>
    </section>
  </main>
  <%@ include file="/components/footer.jsp" %>
</body>
</html>