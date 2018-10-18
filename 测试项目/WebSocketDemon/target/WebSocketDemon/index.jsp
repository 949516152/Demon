<%@page contentType="text/html; charset=UTF-8" %>
<html>
<title>菜鸟教程(runoob.com)</title>
<%--<script src="js/jquery-3.1.0.js"></script>--%>

</head>
<body>


<form action="/my/username.do" method="post">
    <input type="text" name="name">
    <input type="submit" name="提交">
</form>

<div id="sse">
    <a href="javascript:WebSocketTest()">运行 WebSocket</a>
    <br>

    <br>
</div>

<%--<button id="btn">开始</button>--%>

Welcome<br/><input id="text" type="text"/>
    <button onclick="send()">发送消息</button>
     <hr/>
     <button onclick="closeWebSocket()">关闭WebSocket连接</button>
     <hr/>
     <div id="message"></div>

<%--<form action="/my/username.do" method="post">--%>
    <%--<input type="text" name="jsonName">--%>
    <%--<input type="submit" name="提交">--%>
<%--</form>--%>
</body>

<script type="text/javascript">
    // $(function () {
    //     $("#btn").click(function () {
    //         var name = [{"name":"libingfeng"},
    //             {"name":"李冰锋"}];
    //         var jsonName = JSON.stringify(name);
    //         alert(name);
    //
    //         $.post("my/username.do",{jsonName:jsonName},function (data,t,v) {
    //             alert(JSON.stringify(data)+ "**%*"+v + "@@@@@@@@@@"+t + "POST")
    //         })
    //         // $.ajax({
    //         //     url:"my/username.do",
    //
    //         //     type:"POST",
    //         //     data:jsonName,
    //         //     // dataType:"json",//返回值类型
    //         //     contentType:"application/json;charset=UTF-8",//传参内容类型
    //         //     success:function (data) {
    //         //         alert(data.toString()+" success");
    //         //     },
    //         //     error:function (data) {
    //         //         alert("error " + JSON.stringify(data));
    //         //     }
    //         // });
    //     });
    // });


    var ws = null;
    //判断当前浏览器是否支持WebSocket服务
    if ("WebSocket" in window)
    {
        alert("您的浏览器支持 WebSocket!");

        // 当前浏览器支持websocket，则新建一个 web socket，入参为路径，URL默认为
        ws = new WebSocket("ws://localhost:8080/serverend");

        //已打开websocket开始发送信息数据
        ws.onopen = function()
        {
            // Web Socket 已连接上，使用 send() 方法发送数据
            setMessageInnerHTML("WebSocket连接成功");
            // alert("数据发送中...");
        };

        //接收消息的回调，消息信息存档在参数中
        ws.onmessage = function (evt)
        {
            var received_msg = evt.data;
            setMessageInnerHTML(evt.data+"===1"+evt.origin+"===2"+evt.ports+"====3"+evt.source+"====4");
            // alert("数据已接收...");
        };

        ws.onerror = function (ev) {
            var errData = ev.data;
            setMessageInnerHTML(errData)
            alert("产生错误");
        }

    }
    else
    {
        // 浏览器不支持 WebSocket
        alert("您的浏览器不支持 WebSocket!");
    }

    //关闭WebSocket连接
    function closeWebSocket() {
        ws.onclose = function()
        {
            // 关闭 websocket
            alert("连接已关闭...");
        };
    }

    //发送消息
    function send() {
        var message = document.getElementById('text').value;
        ws.send(message);
    }

    //将消息显示在网页上
    function setMessageInnerHTML(innerHTML) {
            document.getElementById('message').innerHTML += innerHTML + '<br/>';
    }
</script>
</html>
