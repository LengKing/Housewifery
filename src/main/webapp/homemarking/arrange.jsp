<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" href=<%=path+"/image/favicon.ico"%> >
<link rel="stylesheet" type="text/css" href=<%=path+"/static/css/jquery-ui.min.css" %>>
<link rel="stylesheet" type="text/css" href=<%=path+"/static/css/jquery-ui.structure.min.css" %>>
<link rel="stylesheet" type="text/css" href=<%=path+"/static/css/jquery-ui.theme.min.css" %>>
<link rel="stylesheet" type="text/css" href=<%=path+"/static/css/core/main.css" %>>
<link rel="stylesheet" type="text/css" href=<%=path+"/static/css/daygrid/main.css" %>>
<link rel="stylesheet" type="text/css" href=<%=path+"/static/css/demostyle.css" %>>
<script type="text/javascript" src=<%=path+"/static/js/jquery.js" %>></script>
<script type="text/javascript" src=<%=path+"/static/js/jquery-ui.min.js" %>></script>
<script type="text/javascript" src=<%=path+"/static/js/core/main.js" %>></script>
<script type="text/javascript" src=<%=path+"/static/js/daygrid/main.js" %>></script>
<script type="text/javascript" src=<%=path+"/static/js/interaction/main.js" %>></script>
<script type="text/javascript" src=<%=path+"/static/js/demo.js" %>></script>
</head>
<body style="background-color: white">
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
	<div id='calendar'></div>

    <div id="caidan" title="排班日程" hidden="hidden">
        <form class="form-inline">
            <p>
                <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日期：</label>
                <input type="text" class="sear datepicker" id="starttime" disabled="disabled">
            </p>

            <p>
                <legend>家政人员</legend>
                <fieldset id="p"></fieldset>
            </p>
		</form>
	</div>
	
	<div id="sameday" title="日程明细" hidden="hidden">
		<form class="form-inline">
			<p>
                <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日期：</label>
                <input type="text" class="sear datepicker" id="detailtime" disabled="disabled">
			</p>
            <p>
                <legend>家政人员</legend>
                <fieldset id="p1"></fieldset>
            </p>
		</form>
	</div>
</body>
</html>