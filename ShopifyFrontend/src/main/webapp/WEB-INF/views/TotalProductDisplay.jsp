<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<body background="https://www.noupe.com/wp-content/uploads/2009/10/hybrid-genesis.jpg">

<br> <br>

<form action="<c:url value="/addToCart/${product.productId}" />" >
<table class="table-bordered" align="center"> 
 <tr>
   <td rowspan="8"> 
   <img src="<c:url value="/resources/images/${product.productId}.jpg" />" alt = "Generic placeholder thumbnail">
   </td>
   <td> Product Id </td>
   <td> ${product.productId}</td>
 </tr>
 
 <tr>
   <td> Product Name </td>
   <td> ${product.productName}</td>
 </tr>
 
 <tr>
   <td> Price </td>
   <td> INR ${product.price}/-</td>
 </tr>
 
 <tr>
   <td> Stock </td>
   <td> ${product.stock}</td>
 </tr>
 
  <tr>
   <td> Category </td>
   <td> ${product.categoryId}</td>
 </tr>
 
  <tr>
   <td> Supplier </td>
   <td> ${product.supplierId}</td>
 </tr>
 
  <tr>
   <td> Description </td>
   <td> ${product.productDesc}</td>
 </tr>
 
<tr>
   <td> Quantity 
          <select name="quantity">
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
            <option value="4"> 4 </option>
            <option value="5"> 5 </option>
          </select>    
   </td>
   <td> <input type="submit" value ="Add To Cart" class="btn btn-success"> </td>
 </tr>
 
</table>
 </form>
 
 </body>