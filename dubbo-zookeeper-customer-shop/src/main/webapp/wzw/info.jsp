<%--
  Created by IntelliJ IDEA.
  User: WANG
  Date: 2018/7/20
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Title</title>
</head>
<body>
<ul id="myTab" class="nav nav-tabs">
    <li class="active"><a href="#home" data-toggle="tab">基本信息</a></li>
    <li><a href="#ios" data-toggle="tab">个人资料</a></li>
</ul>
<%--<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <table>
            <tr>
                <td align="right">用户名：</td>
                <td>&nbsp;&nbsp;&nbsp;${mm.username}</td>
            </tr>
            <tr>
                <td align="right">E-mail: </td>
                <td>&nbsp;&nbsp;&nbsp;${b.email}</td>
            </tr>
            <tr>
                <td align="right">会员等级: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.mrname}</td>
            </tr>
            <tr>
                <td align="right">状态: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.isenabled}</td>
            </tr>
            <tr>
                <td align="right">积分: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.point}</td>
            </tr>
            <tr>
                <td align="right">余额: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.balance}</td>
            </tr>
            <tr>
                <td align="right">消费金额: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.amount}</td>
            </tr>
            <tr>
                <td align="right">创建日期: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.createdate}</td>
            </tr>
            <tr>
                <td align="right">注册IP: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.loginip}</td>
            </tr>

        </table>
    </div>
    <div class="tab-pane fade" id="ios">
        <table>
            <tr>
                <td align="right">姓名:</td>
                <td>
                    &nbsp;&nbsp;&nbsp; ${mm.name}
                </td>
            </tr>
            <tr>
                <td align="right">姓别:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;${mm.gender}
                </td>
            </tr>
            <tr>
                <td align="right">出生日期:</td>
                <td>
                    &nbsp;&nbsp;&nbsp; ${mm.birth}
                </td>
            </tr>
            <tr>
                <td align="right">地区:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;${mm.area}
                </td>
            </tr>
            <tr>
                <td align="right">地址:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;${mm.address}
                </td>
            </tr>
        </table>
    </div>
</div>--%>
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <table align="center">
            <input type="hidden" value="${mr.mrid}" name="mrid"/>
            <tr>
                <td align="right">用户名：</td>
                <td>&nbsp;&nbsp;&nbsp;${mm.username}</td>
            </tr>
            <tr>
                <td align="right">E-mail: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.email}</td>
            </tr>
            <tr>
                <td align="right">会员等级: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.mrname}</td>
            </tr>
            <tr>
                <td align="right">状态: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.isenabled == 1 ?"<font color='green'>正常</font>":"<font color='red'>禁用</font>"}</td>
            </tr>
            <tr>
                <td align="right">积分: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.point}分</td>
            </tr>
            <tr>
                <td align="right">余额: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.balance}￥</td>
            </tr>
            <tr>
                <td align="right">消费金额: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.amount}￥</td>
            </tr>
            <tr>
                <td align="right">创建日期: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.createdate}</td>
            </tr>
            <tr>
                <td align="right">注册IP: </td>
                <td>&nbsp;&nbsp;&nbsp;${mm.loginip}</td>
            </tr>
        </table>
    </div>
    <div class="tab-pane fade" id="ios">
        <table align="center">
            <tr>
                <td align="right">姓名:</td>
                <td>
                    &nbsp;&nbsp;&nbsp; ${mm.name}
                </td>
            </tr>
            <tr>
                <td align="right">姓别:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;${mm.gender}
                </td>
            </tr>
            <tr>
                <td align="right">出生日期:</td>
                <td>
                    &nbsp;&nbsp;&nbsp; ${mm.birth}
                </td>
            </tr>
            <tr>
                <td align="right">地区:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;${mm.area}
                </td>
            </tr>
            <tr>
                <td align="right">地址:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;${mm.address}
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
