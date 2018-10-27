<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>网站后台管理</title>
    <link href="css/style.css" type="text/css" rel="stylesheet">
    <link href="css/default.css" type="text/css" rel="stylesheet">

    <script language="javascript" src="js/menu.js" type="text/javascript"></script>

</head>
<body onload="javascript:border_left('left_tab1','left_menu_cnt1');">
    <form id="form1" runat="server">
        <table id="indextablebody" cellpadding="0">
            <thead>
                <tr>
                    <th>
                        <div id="logo" title="用户管理后台">
                        </div>
                    </th>
                    <th>
                        <a style="color: #16547E">用户 ：admin</a>&nbsp;&nbsp; <a style="color: #16547E">身份 ：超级管理员</a>&nbsp;&nbsp;
                        <a href="javascript:window.location.reload()" target="content3">隐藏工作台</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="javascript:window.location.reload()" target="content3">管理首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="help" target="_blank">使用帮助</a>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="menu">
                        <ul class="bigbtu">
                            <li id="now01"><a title="安全退出" href="../index.aspx">安全退出</a></li>
                            <li id="now02"><a title="更新缓冲" href="#">更新缓冲</a></li>
                        </ul>
                    </td>
                    <td class="tab">
                        <ul id="tabpage1">
                            <li id="tab1" title="管理首页"><span id="spanTitle">管理首页</span></li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td class="t1">
                        <div id="contents">
                            <table cellpadding="0">
                                <tr class="t1">
                                    <td>
                                        <div class="menu_top">
                                        </div>
                                    </td>
                                </tr>
                                <tr class="t2">
                                    <td>
                                        <div id="menu" class="menu">
                                            <ul class="tabpage2">
                                                <li id="left_tab1" title="操作菜单" onClick="javascript:border_left('left_tab1','left_menu_cnt1');"><span>系统管理</span></li>
                                            </ul>
                                            <div id="left_menu_cnt1" class="left_menu_cnt">
                                                <ul id="dleft_tab1">
                                                    <li id="now12"><a title="权限管理" href="mode.aspx" target="content3"><span>权限管理</span></a></li>
                                                    <li id="now13"><a title="管理员列表" href="userList.aspx" target="content3"><span>用户信息</span></a></li>
                                                    <li id="now1a"><a title="修改密码" href="Password.aspx" target="content3"><span>修改密码</span></a></li>
                                                    <li id="now1b"><a title="系统日志" onclick="show_title('生成文件管理')" href="#" target="content3">
                                                        <span>系统日志</span></a></li>
                                                </ul>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            
                                            <ul class="tabpage2">
                                                <li id="left_tab2" onClick="javascript:border_left('left_tab2','left_menu_cnt2');" title="操作菜单"><span>商品管理</span></li>
                                            </ul>
                                            <div id="left_menu_cnt2" class="left_menu_cnt">
                                                <ul id="dleft_tab2">
                                                    <li id="now11"><a title="商品添加" href="addCommodity.aspx" target="content3"><span>商品添加</span></a></li>
                                                    <li id="now12"><a title="商品更新" href="updataCommodity.aspx" target="content3"><span>商品更新</span></a></li>
                                                    <li id="Li1"><a title="订单查询" href="#" target="content3"><span>订单查询</span></a></li>
                                                    <li id="Li4"><a title="订单管理" href="#" target="content3"><span>订单管理</span></a></li>
                                                </ul>
                                            </div>
                                            <div class="clear">
                                            </div>

                                            <ul class="tabpage2">
                                                <li id="left_tab3" onClick="javascript:border_left('left_tab3','left_menu_cnt3');" title="操作菜单"><span>留言管理</span></li>
                                            </ul>
                                            <div id="left_menu_cnt3" class="left_menu_cnt">
                                                <ul id="dleft_tab3">
                                                    <li id="now11"><a title="评论列表" href="mode.aspx" target="content3"><span>评论列表</span></a></li>
                                                    <li id="now11"><a title="意见反馈" href="mode.aspx" target="content3"><span>意见反馈</span></a></li>
                                                </ul>
                                            </div>
                                            <div class="clear">
                                            </div>
                                        </div>
                                        <tr class="t3">
                                            <td>
                                                <div class="menu_end">
                                                </div>
                                            </td>
                                        </tr>
                            </table>
                        </div>
                    </td>
                    <td class="t2">
                        <div id="cnt">
                            <div id="dtab1">
                                <iframe name="content3" src="main.aspx" frameborder="0"></iframe>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <script type="text/javascript">
        //修改标题
        function show_title(str){
	        document.getElementById("spanTitle").innerHTML=str;
        }
        </script>
    </form>
</body>
</html>
