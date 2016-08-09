<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>欢迎访问剑阁网络管理平台</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
<!--content-->
<div class="content_box">
    <div class="content_right2">
    	<div class="content_left_con2">
            <div class="tab_select_box">
            	<h3 class="title_jiandu_font">人员信息</h3>
				<div class="add_name_box">
                	<table cellpadding="0" cellspacing="0" width="775" class="tabl_form_sebo">
                    	<tr>
                        	<td align="right" width="124">姓名：</td>
                            <td><input type="text" class="input_width113" /></td>
                            <td align="right" width="95">性别：</td>
                            <td><span><input type="radio" /></span><span>男</span><span><input type="radio" /></span><span>女</span></td>
                            <td align="right" width="106">出生年月：</td>
                            <td>
                            	<dl class="select_Set1 l">
                                    <dt class="flBox">年</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                                <dl class="select_Set1 l">
                                    <dt class="flBox">月</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">1月</a></li>
                                            <li><a href="#">2月</a></li>
                                            <li><a href="#">3月</a></li>
                                            <li><a href="#">4月</a></li>
                                            <li><a href="#">月5</a></li>
                                            <li><a href="#">6月</a></li>
                                            <li><a href="#">7月</a></li>
                                            <li><a href="#">8月</a></li>
                                            <li><a href="#">9月</a></li>
                                            <li><a href="#">10月</a></li>
                                            <li><a href="#">11月</a></li>
                                            <li><a href="#">12月</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                        		<dl class="select_Set1 l">
                                    <dt class="flBox">日</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">1日</a></li>
                                            <li><a href="#">2日</a></li>
                                            <li><a href="#">3日</a></li>
                                            <li><a href="#">4日</a></li>
                                            <li><a href="#">5日</a></li>
                                            <li><a href="#">6日</a></li>
                                            <li><a href="#">7日</a></li>
                                            <li><a href="#">8日</a></li>
                                            <li><a href="#">9日</a></li>
                                            <li><a href="#">10日</a></li>
                                            <li><a href="#">11日</a></li>
                                            <li><a href="#">12日</a></li>
                                            <li><a href="#">13日</a></li>
                                            <li><a href="#">14日</a></li>
                                            <li><a href="#">15日</a></li>
                                            <li><a href="#">16日</a></li>
                                            <li><a href="#">17日</a></li>
                                            <li><a href="#">18日</a></li>
                                            <li><a href="#">19日</a></li>
                                            <li><a href="#">20日</a></li>
                                            <li><a href="#">21日</a></li>
                                            <li><a href="#">22日</a></li>
                                            <li><a href="#">23日</a></li>
                                            <li><a href="#">24日</a></li>
                                            <li><a href="#">25日</a></li>
                                            <li><a href="#">26日</a></li>
                                            <li><a href="#">27日</a></li>
                                            <li><a href="#">28日</a></li>
                                            <li><a href="#">29日</a></li>
                                            <li><a href="#">30日</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">民族：</td>
                            <td>
                            	<dl class="select_Set4 l">
                                    <dt class="flBox">民族</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                            <td align="right">籍贯：</td>
                            <td>
                            	<dl class="select_Set2 l">
                                    <dt class="flBox">籍贯</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                            <td align="right">参加工作时间：</td>
                            <td>
                            	<dl class="select_Set1 l">
                                    <dt class="flBox">年</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                                <dl class="select_Set1 l">
                                    <dt class="flBox">月</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">1月</a></li>
                                            <li><a href="#">2月</a></li>
                                            <li><a href="#">3月</a></li>
                                            <li><a href="#">4月</a></li>
                                            <li><a href="#">月5</a></li>
                                            <li><a href="#">6月</a></li>
                                            <li><a href="#">7月</a></li>
                                            <li><a href="#">8月</a></li>
                                            <li><a href="#">9月</a></li>
                                            <li><a href="#">10月</a></li>
                                            <li><a href="#">11月</a></li>
                                            <li><a href="#">12月</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                        		<dl class="select_Set1 l">
                                    <dt class="flBox">日</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">1日</a></li>
                                            <li><a href="#">2日</a></li>
                                            <li><a href="#">3日</a></li>
                                            <li><a href="#">4日</a></li>
                                            <li><a href="#">5日</a></li>
                                            <li><a href="#">6日</a></li>
                                            <li><a href="#">7日</a></li>
                                            <li><a href="#">8日</a></li>
                                            <li><a href="#">9日</a></li>
                                            <li><a href="#">10日</a></li>
                                            <li><a href="#">11日</a></li>
                                            <li><a href="#">12日</a></li>
                                            <li><a href="#">13日</a></li>
                                            <li><a href="#">14日</a></li>
                                            <li><a href="#">15日</a></li>
                                            <li><a href="#">16日</a></li>
                                            <li><a href="#">17日</a></li>
                                            <li><a href="#">18日</a></li>
                                            <li><a href="#">19日</a></li>
                                            <li><a href="#">20日</a></li>
                                            <li><a href="#">21日</a></li>
                                            <li><a href="#">22日</a></li>
                                            <li><a href="#">23日</a></li>
                                            <li><a href="#">24日</a></li>
                                            <li><a href="#">25日</a></li>
                                            <li><a href="#">26日</a></li>
                                            <li><a href="#">27日</a></li>
                                            <li><a href="#">28日</a></li>
                                            <li><a href="#">29日</a></li>
                                            <li><a href="#">30日</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">政治面貌：</td>
                            <td>
                            	<dl class="select_Set4 l">
                                    <dt class="flBox">政治面貌</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                            <td align="right">学历：</td>
                            <td>
                            	<dl class="select_Set2 l">
                                    <dt class="flBox">学历</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                            <td align="right">联系电话：</td>
                            <td><input type="text" class="width230"></td>
                        </tr>
                        <tr>
                        	<td align="right">监护人：</td>
                            <td><span><input type="radio" /></span><span>有</span><span><input type="radio" /></span><span>无</span></td>
                            <td align="right">监护人姓名：</td>
                            <td><input type="text" class="width84"></td>
                            <td align="right">所属联络点：</td>
                            <td>
                            	<dl class="select_Set3 l">
                                    <dt class="flBox">所属联络点</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">责任人：</td>
                            <td><span><input type="radio" /></span><span>有</span><span><input type="radio" /></span><span>无</span></td>
                            <td align="right">责任人姓名：</td>
                            <td><input type="text" class="width84"></td>
                            <td align="right">维稳类型：</td>
                            <td>
                            	<dl class="select_Set3 l">
                                    <dt class="flBox">维稳类型</dt>
                                    <dd>
                                        <ul>
                                            <li><a href="#">2016年</a></li>
                                            <li><a href="#">2015年</a></li>
                                            <li><a href="#">2014年</a></li>
                                            <li><a href="#">2013年</a></li>
                                            <li><a href="#">2012年</a></li>
                                            <li><a href="#">2011年</a></li>
                                            <li><a href="#">2010年</a></li>
                                            <li><a href="#">2009年</a></li>
                                            <li><a href="#">2008年</a></li>
                                            <li><a href="#">2007年</a></li>
                                            <li><a href="#">2006年</a></li>
                                            <li><a href="#">2005年</a></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">家庭地址或工作单位：</td>
                            <td colspan="5"><input type="text" class="input_box_width" /></td>
                        </tr>
                        <tr>
                        	<td align="right">检查事由：</td>
                            <td colspan="5"><textarea class="input_box_width1"></textarea></td>
                        </tr>
                        <tr>
                        	<td></td>
                            <td colspan="5"><p class="twobtn_set"><a href="javascript:;">提交回复</a><a href="javascript:;">返回</a></p></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
  </div>
</div>

</body>
</html>
