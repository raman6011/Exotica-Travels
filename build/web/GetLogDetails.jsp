<%-- 
    Document   : GetLogDetails
    Created on : 30 Dec, 2019, 5:01:55 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log Details Page</title>
    </head>
    <body>
        <jsp:include page="Template1.jsp"></jsp:include>
        <td valign='top' rowspan="200" colspan="80">
            <table>
                <tr>
                    <td>
                    <jsp:include page="/GetLogDetails">
                        <jsp:param name="title" value="GetLogDetails"/>
                    </jsp:include>
                    </td>
                </tr>
            </table>
                
    </body>
</html>
