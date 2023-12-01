<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page </title>
<%@include file="all_content/allcss.jsp"%>
</head>
<style>
body{
background-color:green;
}li{
        border-right: .5px solid grey;
    }
</style>
<body>
<%@include file="all_content/navbar1.jsp"%>

<div class=" bg-light">
        <div id="carouselExampleSlidesOnly" class="carousel slide " data-bs-ride="carousel">
            <div class="carousel-inner ">
                <div class="carousel-item active">
                    <img src="images/admin.jpg" class="d-block w-100 " alt="unsupported images" height="620vh">
                </div>
                <div class="carousel-item ">
                    <img src="images/adminback.jpg" class="d-block w-100" alt="unsupported images" height="620vh">
                </div>
                <div class="carousel-item">
                    <img src="images/background.png" class="d-block w-100 " alt="unsupported images" height="620vh">
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="text-center mt-2">
        <b> All Right Reserverd &copy; ShravaniSoftwares :: 2023</b>
    </div>


</body>
</html>