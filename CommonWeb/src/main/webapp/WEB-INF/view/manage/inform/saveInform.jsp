<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>编辑公告</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx }/static/layui/css/layui.css" media="all"/>
    <script>
        <%--JS gloable varilible--%>
        var ctx = "${ctx}";
    </script>
    <style type="text/css">
        .layui-form-item .layui-inline {
            width: 33.333%;
            float: left;
            margin-right: 0;
        }

        @media ( max-width: 1240px) {
            .layui-form-item .layui-inline {
                width: 100%;
                float: none;
            }
        }
    </style>
</head>
<body class="childrenBody">
<form class="layui-form layui-form-pane" action="" style="width:80%;margin:0 auto;margin-top: 2%;" id="saveInformForm"
      onsubmit="return false;">
    <input type="hidden" value="${inform.id}" name="id">
    <div class="layui-form-item ">
        <label class="layui-form-label">通知标题</label>
        <div class="layui-input-block">
            <input type="text" id="title" name="title" lay-verify="required" placeholder="请输入通知标题"
                   value="${inform.title}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label" style="height: 300px;">通知内容</label>
        <div class="layui-input-block">
            <textarea type="text" style="height: 300px;" id="content" name="content" lay-verify="required"
                      placeholder="请输入通知内容" class="layui-textarea">${inform.content}</textarea>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="saveInform">立即保存</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            <button onclick="backPage()" class="layui-btn layui-btn-warm">返回</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx }/static/layui/layui.js"></script>

<script type="text/javascript" src="${ctx}/static/js/common.js"></script>
<script type="text/javascript" src="${ctx}/view/manage/inform/saveInform.js"></script>
</body>
</html>