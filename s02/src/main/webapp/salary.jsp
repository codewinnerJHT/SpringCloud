<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>al公司后台管理系统</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <link rel="stylesheet" href="./css/global.css">
    <link rel="stylesheet" href="./icheck/minimal/red.css">
</head>

<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <div class="layui-logo">al公司后台管理系统</div>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 管理员
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="sysConfig.jsp">基本资料</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="login.jsp">退出系统</a></li>
            </ul>
        </div>

        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item">
                        <a class="" href="sysConfig.jsp">个人信息</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/index">员工信息</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/dept">部门信息</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/salary">员工工资</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/check">账单管理</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="layui-body">
            <!-- 内容主体区域 -->
            <div style="padding: 15px;">
                <fieldset class="layui-elem-field">
                    <legend>员工工资</legend>
                    <div class="layui-field-box">
                        <form class="layui-form" action="${pageContext.request.contextPath}/selectSalary">
                            <div class="layui-form-item" style="text-align:center;">
                                <div class="layui-inline">
                                    <div class="layui-input-inline">
                                        <input autocomplete="off" class="layui-input" placeholder="请输入员工工号" type="text" name="enumber" value="">
                                    </div>
                                </div>
                                <div class="layui-inline" style="text-align:left;">
                                    <div class="layui-input-inline">
                                        <button class="layui-btn"><i class="layui-icon">&#xe615;</i>查询</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <hr>
                        <div class="layui-btn-group">
                            <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="sal.jsp" dw-title="新增">
                      <i class="layui-icon">&#xe654;</i>新增
                  </button>
                            <button class="layui-btn layui-btn-xs layui-btn-danger dw-batch-delete" dw-url="./delete.json">
                      <i class="layui-icon">&#xe640;</i>删除
                  </button>
                            <button class="layui-btn layui-btn-xs dw-refresh">
                      <i class="layui-icon">&#x1002;</i>刷新
                  </button>
                        </div>
                        <hr>
                        <table class="layui-table">
                            <colgroup>
                                <col width="150">
                                <col width="150">
                                <col width="200">
                                <col>
                                <col>
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="selectAll"><input type="checkbox"></th>
                                    <th>员工工号</th>
                                    <th>员工名称</th>
                                    <th>基本工资</th>
                                    <th style="text-align:center;">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="salary" items="${salaryList}">
                                <tr>
                                    <td><input type="checkbox" name="id" value="1"></td>
                                    <td>${salary.enumber}</td>
                                    <td>${salary.ename}</td>
                                    <td>${salary.salry}</td>
                                    <td class="text-center">
                                        <div class="layui-btn-group">
                                            <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="${pageContext.request.contextPath}/sal.jsp?enumber=${salary.enumber}&ename=${salary.ename}&salry=${salary.salry}" dw-title="编辑">
                            <i class="layui-icon">&#xe642;</i>编辑
                          </button>
                                            <button class="layui-btn layui-btn-xs layui-btn-danger dw-delete" dw-url="${pageContext.request.contextPath}/delSalary?enumber=${salary.enumber}" dw-title="${salary.ename}">
                            <i class="layui-icon">&#xe640;</i>删除
                          </button>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </fieldset>
            </div>
        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
        </div>
    </div>
    <script type="text/javascript" src="./javascript/jquery.min.js"></script>
    <script type="text/javascript" src="./layui/layui.js"></script>
    <script type="text/javascript" src="./icheck/icheck.js"></script>
    <script type="text/javascript" src="./javascript/dw.js"></script>
</body>

</html>