<%@page import="models.Product"%>
<%@page import="dao.ProductDao"%>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/HomePage.css">
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">
	
	<title>Startseite</title>
</head>
<body>
  <%@include file="/components/header.jsp" %>
 
  <main class="homepage-content page-wrapper">
    <section class="hero">
      <div class="description">
        <h1>Beste Schranke Ludwigshafens</h1>
    
 
        <a href="#best">
          <button class="button">Unsere beste Produkte <span class="icon">👉</span></button>
        </a>
      </div>
      <div class="hero-image-container">
        <img
          class="hero-image"
          src="<%= request.getContextPath() %>/images/hero-image.jpg"
          alt="Hero image: Schrank"
        >
      </div>
    </section>
 
    <section id="best" class="best-products">
      <h2 class="heading1">Beste Produkte</h2>
 
      <div class="product-list"> 
		<%!ProductDao productDao = new ProductDao();%>
		
		<% 
			List<Product> products = productDao.getAllProducts();
	
		
		for (Product p: products) { %>
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X" >
          <main class="product-card-body">
            <h3><%= p.getName() %></h3>
            <span><%= p.getPrice() %> €</span>
            <div>⭐⭐⭐</div>
          </main>
        </div>
        <% } %>
      </div>
    </section>
    
    <section class="teaser">
      <h2 class="heading1">Produkte</h2>
 
      <div class="product-list">
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X">
          <main class="product-card-body">
            <h3>Name of product</h3>
            <span>22,4 €</span>
            <div>⭐⭐⭐</div>
          </main>
        </div>
 
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X">
          <main class="product-card-body">
            <h3>Name of product</h3>
            <span>22,4 €</span>
            <div>⭐⭐⭐</div>
          </main>
        </div>
 
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X">
          <main class="product-card-body">
            <h3>Name of product</h3>
            <span>22,4 €</span>
            <div>⭐⭐⭐</div>
          </main>
        </div>
 
        <div class="product-card">
          <img class="product-card-image" src="<%= request.getContextPath() %>/images/hero-image.jpg" alt="Product X">
          <main class="product-card-body">
            <h3>Name of product</h3>
            <span>22,4 €</span>
            <div>⭐⭐⭐</div>
          </main>
        </div>
 
      </div>
    </section>
  </main>
 
  <%@ include file="/components/footer.jsp" %>
</body>
</html>