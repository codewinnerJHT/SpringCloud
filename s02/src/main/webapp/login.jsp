<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>al公司后台管理系统-登录</title>
    <link rel="stylesheet" type="text/css" href="./layui/css/layui.css" media="all" />
    <link rel="stylesheet" type="text/css" href="./css/login.css" />
</head>

<body class="beg-login-bg">
    <div class="beg-login-box">
        <header>
            <h1>al公司后台管理系统</h1>
        </header>
        <div class="beg-login-main">
            <form action="/login" class="layui-form" method="post">
                <div class="layui-form-item">
                    <label class="beg-login-icon">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
                    <input type="text" lay-verify="required" id="username" name="name" autocomplete="off" placeholder="这里输入账号" class="layui-input" lay-verType="tips">
                </div>
                <div class="layui-form-item">
                    <label class="beg-login-icon">
                        <i class="layui-icon">&#xe642;</i>
                    </label>
                    <input type="password" lay-verify="required" id="password" name="password" autocomplete="off" placeholder="这里输入密码" class="layui-input" lay-verType="tips">
                </div>
                <div class="layui-form-item">
                    <div class="beg-pull">
                        <p><font color="red">${msg}</font></p>
                        <button onclick="aaa()" type="button" class="layui-btn layui-btn-normal" style="width:100%;" lay-submit lay-filter="formDemo">
                            登　　录
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <footer>
            <p>power by dw © </p>
        </footer>
    </div>
    <script type="text/javascript" src="./javascript/jquery.min.js"></script>
    <script type="text/javascript" src="./layui/layui.js"></script>
</body>
<script type="text/javascript">
    var username = document.getElementById("username");
    var password = document.getElementById("password");

    function aaa() {

        if (username.value == "admin" && password.value == "123") {

            window.location.href = "${pageContext.request.contextPath}/sysConfig.jsp";
            return false;
        } else {
            alert("请输入正确的账号和密码！");
            return false;
        }
    }
</script>

</html>