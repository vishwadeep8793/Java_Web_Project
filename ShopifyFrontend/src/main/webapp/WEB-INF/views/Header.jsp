<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title> ${pageinfo}Shopify </title>

<link rel="shortcut icon" type="image/x-icon" href="https://cdn.shopify.com/shopify-marketing_assets/static/shopify-favicon.png" />

<meta name=viewport content="width=device-width , intial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


<style>
.navbar-custom
{

background-color: #4d004d;
}
</style>

</head>

<body>

<div class="container">
    <nav class="navbar navbar-inverse navbar-custom" >
        <div class="container-fluid">
           <div class="navbar-header"> 
               <a class="navbar-brand" href="#" > SHOPIFY </a>
           </div>
           
           <c:if test="${!sessionScope.loggedIn}">
           
             <ul class=" nav navbar-nav"> 
               <li> <a href="<c:url value="/" />"> <i class='fas fa-home'></i> HOME </a></li>
               <li> <a href="<c:url value="/login" />"> <i class='fas fa-user-alt'></i> LOGIN  </a></li>
               <li> <a href="<c:url value="/register" />"> <i class='fas fa-user-plus'></i> REGISTER </a></li>
               <li> <a href="<c:url value="/contactus" />"> <i class='fas fa-comments'></i> CONTACT US </a></li>
               <li> <a href="<c:url value="/aboutus" />"> <i class='fas fa-info-circle'></i> ABOUT US </a></li>
             </ul>
           </c:if>  
           
           <c:if test="${sessionScope.loggedIn}">
             <c:if test="${sessionScope.role=='ROLE_ADMIN'}">

                 <ul class=" nav navbar-nav">
                   <li> <a href="<c:url value="/adminhome" />"> <i class='fas fa-home'></i> HOME </a></li>
                   <li> <a href="<c:url value="/product" />"> <i class='fas fa-edit'></i> MANAGE PRODUCT </a></li>
                   <li> <a href="<c:url value="/category" />"> <i class='fas fa-edit'></i> MANAGE CATEGORY </a></li>
                   <li> <a href="<c:url value="/productDisplay" />"> <i class='fas fa-tags'></i> PRODUCT CATALOG </a></li>
                </ul>
             </c:if> 
             
             <c:if test="${sessionScope.role=='ROLE_USER'}">

                 <ul class=" nav navbar-nav">
                   <li> <a href="<c:url value="/userhome" />"> <i class='fas fa-home'></i> HOME </a></li> 
                   <li> <a href="<c:url value="/productDisplay" />"> <i class='fas fa-tags'></i> PRODUCT CATALOG </a></li>
                   <li> <a href="<c:url value="/cart" />"> <i class='fas fa-shopping-cart'></i> CART </a></li>
                   <li> <a href="<c:url value="/myorders" />"> <i class='fa fa-shopping-bag' ></i> YOUR ORDERS </a></li>
                </ul>
             </c:if>
           </c:if>  
              
         </div>
         
         <c:if test="${sessionScope.loggedIn}">
            <div style="margin-top:-30px;margin-left:930px" > 
               <font color="white" face="calibri" size="3"> Welcome ${sessionScope.username} </font>
               <a href="<c:url value="/perform_logout" />" class="btn btn-danger"> <i class='fas fa-power-off'></i> Logout </a>
            </div>  
         </c:if>
     </nav>         
 </div> 
  


</body>
</html>