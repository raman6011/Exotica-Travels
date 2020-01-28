<%-- 
    Document   : HomePage
    Created on : 30 Dec, 2019, 5:00:17 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="CSS/cssfile1.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="Template1.jsp"></jsp:include>
        
        <script type="text/javascript">
            //refreshdiv();
        </script>
        <script type="text/javascript">
            var seconds = 1;
            var img = "imgchng";
            var url = "ImageChange";
            function refreshdiv(){
                var xmlHttp;
                try
                {
                xmlHttp = new XMLHttpRequest();
                //alert('1');
                }
                catch(e)
                {
                    try
                    {
                        xmlHttp = new ActiveXObject("Msxm12.XMLHTTP");
                        //alert('2');
                    }
                    catch(e)
                    {
                        try
                        {
                            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                            //alert('3');
                        }
                        catch(e)
                        {
                            alert("Your browser does not support AJAX.");
                            return false;
                        }
                    }
                }
                //TimeStamp for preventing IE catching the GET request.
                fetch_unix_timestamp = function() {
                    //alert('4');
                    //alert(new Date());
                    return parseInt(new Date().getTime().toString().substring(0,10));
                };
                //alert('before timestamp');
                var timestamp = fetch_unix_timestamp();
                //alert('timestamp' + timestamp);
                var nocacheurl = url+"?t="+timestamp;
                //alert('readystate1 ' + xmlHttp.readyState);
                xmlHttp.onreadystatechange = function() {
                    //alert('readystate2 ' + xmlHttp.readyState);
                    if(xmlHttp.readyState === 4)
                    {
                        //alert('xmlHttp.readyState');
                        document.getElementById(img).src = xmlHttp.responseText;
                        setTimeout('refreshdiv()', seconds*1000);
                    }
                };
                xmlHttp.open("GET", nocacheurl, true);
                xmlHttp.send(null);
        }
        //start refreshing process
        var seconds;
        window.onload = function startrefresh(){
            setTimeout('refreshdiv()', seconds*1000);
            //alert('window on load');
        };
        </script>
        <div>
        <td valign="top">
            <br><br>
            <b><i>
                    <font style="font-family: 'Brush Script MT Italics', Gadget, sans-serif;" size='+1' color='darkblue'>
                    <p align="justify" id="para">Exotica Travels is a travel management company established by Jordan Desilva in Colombo, SriLanka.
                    Today under the chairmanship of Jim Henry, the company has spread across the country. 
                    It provides the online air tickets booking. In addition, it provides hotel suite booking in various 
                    exotic locations all over the world. Moreover it provides rental car bookings. To avail the travel 
                    package services kindly log on to the web site.</p>
            </i></b>
            <br><br>
            <div class="wrapper fadeInDown">
                <div id="formContent">
                    <h2 class="active"> Login As </h2><br><br>
                    <html:form method="post" action="/SubmitAction">
                        <html:radio  property="r1" value='existinguser'>Existing User</html:radio><br><br>
                        <html:radio property="r1" value='newuser'>New User</html:radio><br><br>
                        <input type="submit" value="Submit">
                  </html:form>
                </div>
            </div>
        </div>
    </body>
</html>
