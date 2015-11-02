<%@ page language="java" import="java.util.ResourceBundle" %>
<%@ page import="java.net.InetAddress" %>
<%
    String title;
    try {
        ResourceBundle resource = ResourceBundle.getBundle("petclinic");
        title = resource.getString("title");
    } catch (Exception e) {
        title = "NOT FOUND IN RESOURCE BUNDLE";
    }

    String ip;
    String hostname;
    try {
        InetAddress address = InetAddress.getByName("petclinic");
        ip = address.getHostAddress();
        hostname = System.getenv("HOSTNAME");
    }catch (Exception e) {
        ip = "0.0.0.0";
        hostname = "docker_host_not_found";
    }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="styles/petclinic.css" type="text/css"/>
    <title>PetDocker</title>
</head>

<body>

<div id="main">
    <img src="/petclinic/images/docker.jpg" align="right" style="position:relative;right:30px;">

    <p>&nbsp;</p>

    <p>-- Welcome [<%=title%>] !-- </p>

    <ul>
        <li><a href="/petclinic/findOwners.jsp">Find owner</a></li>
        <li><a href="/petclinic/vets.jsp">Display all whales</a></li>
        <li><a href="/petclinic/petclinic.html">Tutorial</a></li>
    </ul>
    <p>&nbsp;</p>

    <table class="footer">
        <tr>
            <td><a href="/petclinic/index.html">Home</a></td>
            <td>[IP:<%=ip%>]</td>
            <td>[Hostname:<%=hostname%>]</td>
        </tr>
    </table>

</div>
</body>

</html>

