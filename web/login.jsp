<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>重庆市诚善中学校-考勤系统</title>
    <meta name="keywords" content="重庆市诚善中学校,考勤系统">
    <link rel="shortcut icon" href="/images/favicon.ico" />
    <meta name="description" content="">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/css/login.css" media="all">
</head>
<body>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-lg12 p1">
            <span><img src="/images/logo.png" /></span><span><b>重庆市诚善中学校园考勤系统</b><cite>Chongqing Cheng Shan middle school Campus attendance system</cite></span>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-lg12 p2">
            <div class="layui-col-lg6"><img src="/images/loginbg2img.png" /></div>
            <div class="layui-col-lg6">
                <form class="layui-form">
                    <div class="box">
                        <div class="title"><span>用户登录</span><i>User login</i></div>
                        <div class="content">
                            <div class="layui-form-item t">
									<span>
										<i class="layui-icon layui-icon-username"></i><cite>|</cite><input type="text" name="account" value="" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="">
									</span>
                            </div>
                            <div class="layui-form-item t">
									<span>
										<i class="layui-icon layui-icon-password"></i><cite>|</cite><input type="password" name="pwd" value="cs123456" required lay-verify="required" placeholder="请输入密码" autocomplete="off">
									</span>
                            </div>
                            <div class="layui-form-item t">
									<span class="codeBox">
										<i class="layui-icon layui-icon-vercode"></i><cite>|</cite><input type="text" name="code" required lay-verify="required" placeholder="验证码" autocomplete="off" class="code">
									</span><img src="/check" id="iCodeImage" alt="验证码" title="点击更换" />
                            </div>
                            <div class="tips"></div>
                        </div>
                        <div class="btn">
                            <button class="layui-btn" lay-submit lay-filter="submit">立即登录</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="p3">Copyright 2018 重庆市诚善中学校 备案号：渝ICP备09036139号-2</div>
</div>
</body>
<script src="/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;
        var $ = layui.jquery;
        //监听提交
        form.on('submit(submit)',function(data){
            $.ajax({
                url:'/user/login',
                type:'post',
                data:data.field,
                dataType:"json",
                beforeSend:function(){
                    //do something
                },
                success:function(data){
                    //do something
                    if(data.code==0){
                        location.href="/page/main";
                    } else {
                        $('.tips').text(data.msg);
                    }
                },
                error:function(data){
                    //do something
                    layer.msg('与服务器连接失败',{icon: 2});
                }
            });
            return false;
        });
        $('#iCodeImage').on('click',function(){
            $(this).attr('src','/check?' + Math.random());
        });
    });
</script>
</html>