<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<title>oEmbed</title>
	<style>
	table, tr, td{
		margin:auto;
		border-bottom:1px solid grey;
	}
	table, tr:last-child td{
		border-bottom:none;
	}
	</style>
</head>
<body>

<h1 style="text-align:center;">
	oEmbed test
</h1>

<form action="url_search" method="post" style="text-align:center;">	
	 URL:	<input name="url" placeholder="url을 입력해주세요" type="text">	
  	<input type="submit" value="검색">
</form>

<table border="0.2">
	<tr>
		<td>url</td>
		<td>${url}</td>
	</tr>
	<tr>
		<td>title</td>
		<td>${map.res.type}</td>
	</tr>
	<tr>
		<td>type</td>
		<td>${map.res.type}</td>
	</tr>
	<tr>
		<td>version</td>
		<td>${map.res.version}</td>
	</tr>
	<tr>
		<td>provider_name</td>
		<td>${map.res.provider_name}</td>
	</tr>
	<tr>
		<td>provider_url</td>
		<td>${map.res.provider_url}</td>
	</tr>
	<tr>
		<td>author_name</td>
		<td>${map.res.author_name}</td>
	</tr>
	<tr>
		<td>author_url</td>
		<td>${map.res.author_url}</td>
	</tr>
	<tr>
		<td>is_plus</td>
		<td>${map.res.is_plus}</td>
	</tr>
	<tr>
		<td>html</td>
		<td>${map.res.html}</td>
	</tr>
	<tr>
		<td>width</td>
		<td>${map.res.width}</td>
	</tr>
	<tr>
		<td>height</td>
		<td>${map.res.height}</td>
	</tr>
	<tr>
		<td>duration</td>
		<td>${map.res.duration}</td>
	</tr>
	<tr>
		<td>description</td>
		<td>${map.res.description}</td>
	</tr>
	<tr>
		<td>thumbnail_url</td>
		<td><img src ="${map.res.thumbnail_url}"></td>
	</tr>
	<tr>
		<td>thumbnail_width</td>
		<td>${map.res.thumbnail_width}</td>
	</tr>
	<tr>
		<td>thumbnail_height</td>
		<td>${map.res.thumbnail_height}</td>
	</tr>
	<tr>
		<td>thumbnail_url_with_play_button</td>
		<td>${map.res.thumbnail_url_with_play_button}</td>
	</tr>
	<tr>
		<td>upload_date</td>
		<td>${map.res.upload_date}</td>
	</tr>
	<tr>
		<td>video_id</td>
		<td>${map.res.video_id}</td>
	</tr>
	<tr>
		<td>uri</td>
		<td>${map.res.uri}</td>
	</tr>
	
	
	
</table>



</body>
</html>
