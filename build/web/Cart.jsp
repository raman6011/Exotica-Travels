<%-- 
    Document   : Cart
    Created on : 30 Dec, 2019, 5:03:08 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="ct" uri="/WEB-INF/tlds/UserNameTLD.tld" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
    </head>
    <body>
        <jsp:include page="Template1.jsp"></jsp:include>
        <jsp:include page="Template2.jsp"></jsp:include>
        <td valign='top' rowspan="200" colspan="80">
        <table>
            <tr>
                <c:set var="Destination" value="${sessionScope.selDestination}"/>
                <c:set var="Hotel" value="${sessionScope.selHotel}"/>
                <c:set var="NumberOfDays" value="${sessionScope.numDays}"/>
                <c:set var="Airline" value="${sessionScope.selAirline}"/>
                <c:set var="destprice" value="${sessionScope.destPrice}"/>
                <c:set var="HotelPrice" value="${sessionScope.hotelPrice}" />
                <c:set var="TicketPrice" value="${sessionScope.airlinePrice}" />
                <c:set var="TotalHotelPrice" value="${HotelPrice*NumberOfDays + destprice}"/>
                <c:set var="TotalPackagePrice" value="${TotalHotelPrice+TicketPrice}"/>
                
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Domestic Flights</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>International Flights</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Hotels</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Car Rentals</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="TourPackage.jsp"/>'>Tour Packages</a></td>
                <td width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <ct:UserNameTagHandler/>
            </tr>
        </table>
            
         <br>
        <font align='center' color='darkblue' size='+1'>You have added following contents to your cart:
        <br>
        <br>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                   Destination:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${Destination}"/><br>
                    Hotel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${Hotel}"/><br>
                    Days for stay:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${NumberOfDays}"/><br>
                    Airline:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${Airline}"/><br>
                    <b>Total package cost:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber type="Currency" value="${TotalPackagePrice}" /></b><br>
                    <form action="CartServlet" method="post">
                        <input type="submit" class="fadeIn fourth" value="Confirm">
                        <input type="hidden" name="price" value="${TotalPackagePrice}" />
                    </form>
            </div>
        </div>
    </body>
</html>
