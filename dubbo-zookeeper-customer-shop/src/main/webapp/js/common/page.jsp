<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="javaScript:jump(1)">首页</a>
	<a href="javaScript:jump(${page.cpage-1})">上一页</a>
	${page.cpage}/${page.totalPage}
	<a href="javaScript:jump(${page.cpage+1})">下一页</a>
	
	<a href="javaScript:jump(${page.totalPage})">尾页</a>
	
	 <select name="pageSize" onchange="jump(${page.cpage},${page.pageSize})">
	 <option  value="2" ${page.pageSize==2 ? "selected" : ""}>每页2条
	 <option value="3" ${page.pageSize==3 ? "selected" : ""}>每页3条
	 <option value="5" ${page.pageSize==5 ? "selected" : ""}>每页5条
	 <option value="10" ${page.pageSize==10 ? "selected" : ""}>每页10条
	</select>
</body>
</html>