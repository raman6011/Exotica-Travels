<%-- 
    Document   : MyAccount
    Created on : 23 Jan, 2020, 6:00:17 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib prefix="db" uri="/WEB-INF/tlds/DBListTLD.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
        <jsp:include page="Template1.jsp"></jsp:include>
        <jsp:include page="Template2.jsp"></jsp:include>
    </head>
    <body>
        <html:form method='Post' action='/AccountUpdateAction'>
            <div class="wrapper fadeInDown">
                <div id="formContent">
                    <table cellspacing='10' align='center' border='0' bordercolor='white'>
<!--                        <tr>
                              <td></td>
                              <td>Current</td>
                              <td>Update</td>
                        </tr>-->
                        <tr>
                              <td bordercolor='white'>User Name:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="username" value="" /></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Password:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="passsword" value=""/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Address:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:textarea property="address" value=""/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>State:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="state"/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Country:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="country"/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Email:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="email"/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Phone number:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="phone"/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Passport ID:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><html:text property="passsport"/></td>
                        </tr>
                        <tr>
                              <td bordercolor='white'>Tourism Criteria:</td>
                              <td></td>
                              <td COLSPAN='2' bordercolor='white'><db:DBListTagHandler tablename="CATEGORY" colname="Tourism_Criteria"></db:DBListTagHandler></td>
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
