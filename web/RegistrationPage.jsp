<%-- 
    Document   : RegistrationPage
    Created on : 30 Dec, 2019, 5:00:55 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="CSS/cssfile1.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="Template1.jsp"></jsp:include>
        <td valign='top'>
        <html:form method='Post' action='/RegistrationAction'>
            
            <table cellspacing='10' align='center'>
                <tr>
                    <td>
                        <font color='darkblue' size='+2'>New User Registration Form
                    </td>
                </tr>
            </table>
            <div class="wrapper fadeInDown">
              <div id="formContent">  
                  <table cellspacing='10' align='center' border='0' bordercolor='white'>
                      <tr>
                          <td bordercolor='white'>User Name:</td>
                          <td COLSPAN='2' bordercolor='white'><html:text property="username"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'>User ID:</td>
                          <td COLSPAN='2' bordercolor='white'><html:text property="userid"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'>Password:</td>
                          <td COLSPAN='2' bordercolor='white'><html:password property="password"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'>Re-enter Password:</td>
                          <td COLSPAN='2' bordercolor='white'><html:password property="reenterpassword"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'>Address:</td>
                          <td COLSPAN='2' bordercolor='white'><html:textarea property="address"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'>State:</td>
                          <td COLSPAN='2' bordercolor='white'><html:text property="state"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'>Country:</td>
                          <td COLSPAN='2' bordercolor='white'><html:text property="country"/></td>
                      </tr>
                      <tr>
                          <td bordercolor='white'></td><br>
                      </tr>
                      <tr>
                          <td></td>
                          <td bordercolor='white'><input type='Submit' value='Submit'></td>
                      </tr>
                  </table>
                </div>
            </div>
        </html:form>
    </body>
</html>
