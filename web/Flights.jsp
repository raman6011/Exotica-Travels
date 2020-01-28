<%-- 
    Document   : Flights
    Created on : 30 Dec, 2019, 5:02:50 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ct" uri="/WEB-INF/tlds/UserNameTLD.tld" %>
<%@taglib prefix="db" uri="/WEB-INF/tlds/DBListTLD.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flight Page</title>
    </head>
    <body>
        <jsp:include page="Template1.jsp"></jsp:include>
        <jsp:include page="Template2.jsp"></jsp:include>
        <td valign='top' rowspan="200" colspan="80">
        <table>
            <tr>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Domestic Flights</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>International Flights</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Hotels</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Car Rentals</a></td>
                <td><font color='darkblue' size='+1'><a href='<c:url value="TourPackage.jsp"/>'>Tour Packages</a></td>
                <td width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <ct:UserNameTagHandler/>
            </tr>
        </table>
            
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <form action='<c:url value="SessionServlet"/>' name='MyForm' Method='POST'>
                    <font color='darkblue' size="20"> Select Airline: </font><br>
                    <db:DBListTagHandler tablename="Airlines" colname="Airlinename"></db:DBListTagHandler><br>
                    <input type='hidden' value='FlightsServlet' name='PageName'/>
                    <input type='submit' Value='Next'/>
                </form>
            </div>
        </div>
        
    </body>
</html>
