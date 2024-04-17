<%-- 
    Document   : stats
    Created on : Apr 17, 2024, 1:56:33 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info mt-2">THONG KE BAO CAO</h1>
<div class="row">
    <!-- Left, du lieu bang -->
    <div class="col-md-5  col-12">
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Ten san pham</th>
                <th>Doanh thu</th>
            </tr>
            <c:forEach items="${revenueByProducts}" var="p">
                <tr>
                    <!-- ko the goi p.id dc vi ben kia da goi mang -> chi co the goi vi tri trong mang -->
                    <!-- 0 id 1 ten 2 doanh thu -->

                    <td>${p[0]}</td>
                    <td>${p[1]}</td>
                    <!--  -->
                    <td>${String.format("%,d",p[2])} VND</td>
                </tr>
            </c:forEach>


        </table>

    </div>
    <hr>
    <!-- Right, du lieu Chartjs -->
    <div class="col-md-7  col-12">
       
    </div>
</div>    
<div class="row">
    <!-- Left, du lieu bang -->
    <div class="col-md-5  col-12">
        <table class="table table-striped">
            <tr>
                
                <th>Thoi gian</th>
                <th>Doanh thu</th>
            </tr>
            <c:forEach items="${revenueByPeriod}" var="p">
                <tr>
                    <!-- ko the goi p.id dc vi ben kia da goi mang -> chi co the goi vi tri trong mang -->
                    <!-- theo vong for cho 3 vwi th o tren, 0 la tg, 1 la doanh thu -->

                    <td>${p[0]}</td>
                    <!<!--  -->
                    <td>${String.format("%,d",p[1])} VND</td>
                </tr>
            </c:forEach>
        </table>

    </div>
    <hr>
    <!-- Right, du lieu Chartjs -->
    <div class="col-md-7  col-12">
        
    </div>
</div>    


