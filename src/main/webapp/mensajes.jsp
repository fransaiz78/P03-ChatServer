<%@page import="java.util.List"%>
<%@page import="es.ubu.util.ChatClase"%>
<%
	ChatClase server = (ChatClase) application.getAttribute("server");
	String client = (String) session.getAttribute("client");
	List<String> messages = server.getMensajes(client);
	for (String message : messages) {
		out.print("<p>" + "->" + client + ":" + message + "</p>");
	} 
%>