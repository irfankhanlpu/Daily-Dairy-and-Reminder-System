<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="taglib.jsp" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Admin - Add Product
    </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js">
    </script>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-light bg-light">
      <a class="navbar-brand" href="#">
        <img src="images/logo-navbar.PNG" alt="logo">
      </a>
      <form class="mx-2 my-auto d-inline">
        <div class="input-group topnav1">
          <input type="text" class="form-control border border-right-0 bg-light form-rounded" placeholder="Search">
          <span class="input-group-append">
            <button class="btn btn-outline-secondary border border-left-0  form-rounded" type="button">
              <span class="fa fa-search">
              </span>
            </button>
          </span>
        </div>
      </form>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">
            <span class="fa fa-bell">
            </span>
          </a>
        </li>
        <li class="nav-item">
          <span class="navbar-text">
            Welcome, Admin Name...
          </span>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <form class= "mx-2 my-auto w-full">
            <button class="btn btn-secondary  form-rounded" type="button" >Logout
            </button>
          </form>
        </li>
      </ul>
    </nav>
    <div class="container-clearfix">
      <br>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3 bg-light">
          <br>
          <nav class="navbar navbar-expand-md navbar-dark navbar-custom">
            <span class="navbar-text navbar-">
              <b>PROFILE
              </b>
            </span>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a href="" style="color:aliceblue">
                  <b>Edit
                  </b>
                </a>
              </li>
            </ul>
          </nav>
          <br>
          <center>
            <img src="images/profile-picture.PNG" alt="Profile Picture">
            <br>
            <br>
            <b>Irfan
            </b>
            <br>
            <br>
            ID:
            <br> 765444
            <br>
            <br>
            Designation:
            <br>
            Intern
            <br>
            <br>
            Office:
            <br>
            CDC, Pune, India
          </center>
        </div>
        <div class="col-md-9">
          <div class="container">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home">PRODUCTS
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1" action="viewproduct">VENDORS
                </a>
              </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div id="home" class="container tab-pane active">
                <br>
                <form>
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-md-3">
                        <select class="form-control form-rounded" >
                          <option value="ChooseAction">Choose Action
                          </option>
                        </select>
                      </div>
                      <div class="col-md-3">
                        <div class="input-group topnav1">
                          <input type="text" class="form-control border border-right-0 bg-light form-rounded" placeholder="Category Name">
                          <span class="input-group-append">
                            <button class="btn  border border-left-0  form-rounded" type="button">
                              <span class="fa fa-search">
                              </span>
                            </button>
                          </span>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <select class="form-control form-rounded" >
                          <option value="ChooseAction">Sort By
                          </option>
                        </select>
                      </div>
                      </form>
                    <div class="col-md-4">
                      <div class="row">
                        <div class="col-md-6">
                        </div>
                        <div class="col-md-6">
                          <button class="btn btn-secondary form-rounded">Add Product
                          </button>
                        </div>
                      </div>
                    </div>
                    <div class="container-fluid">
                      <br>
                      <table border="1" class="table table-bordered">
                       
                        <tr>
                        <td><center><span style="color:grey">Product Id</span></center></td>
                          <td> <center><span style="color: gray">List </span></td>
                          <td> <center> <span style="color: gray">Brand </span> </td>
                          <td> <center><span style="color: gray">Category </span> </td>
                          <td><center> <span style="color: gray">Rating </span> </td>
                        </tr>
                        <c:forEach items="${productList}" var="product">
                        <tr>
                          <td>
                            <div class="checkbox checkbox-info checkbox-circle">
                              <input id="checkbox10" type="checkbox" checked="">
                              <label for="checkbox10"></label>
                            </div>   
                          </td>
                          <td>${product.productId}</td>
                          <td>${product.productName }</td>
                          <td> ${product.productBrand}</td>
                          <td>${product.productCategory }</td>
                          <td><span style="color: gray">4.7</span>
                          </td>
                          <td>
                           <center>
                              <button class="btn btn-secondary form-rounded" type="button" width="50px"> &emsp;View&emsp; 
                              </button>&emsp;&emsp;
                              <button class="btn btn-secondary form-rounded" type="button"> &emsp;Block&emsp; 
                              </button>&emsp;&emsp;
                              <button class="btn btn-secondary form-rounded" type="button">&nbsp;Remove&nbsp; 
                              </button>
                            </center>
                          </td>
                        </tr>
                        </c:forEach>
                      </table>                                                                  
                    </div>
                  </div>
                  <div id="menu1" class="container tab-pane fade">
                    <br>
                  </div>
                  </div>
              </div>          
              <br>
              <br>
            </div>
          </div> 
          <!--This is col 9 division-->
        </div>
        <!--container fluid ends here-->
      </div>
    </div>
  </body>
</html>