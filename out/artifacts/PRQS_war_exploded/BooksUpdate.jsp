<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="./admin/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="./admin/css/main.css"/>
    <script type="text/javascript" src="./admin/js/libs/modernizr.min.js"></script>
</head>
<body>
<div class="container clearfix">
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="AdminIndex.html">管理首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="Institution.jsp">培训机构管理</a><span class="crumb-step">&gt;</span><span>修改培训机构</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="${pageContext.request.contextPath}/UpdateBooksServlet?" method="post" id="myform"  name="myform" >
                    <input type="hidden" name="books_id" value="${books.books_id}">
                    <table class="insert-tab" width="100%">
                        <tr>
                            <th>书籍名称:</th>
                            <td>
                                <input class="common-text required" id="title"  name="books_name" size="50" value="${books.books_name}"  placeholder="例如:java疯狂讲义" type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>推荐系数:</th>
                            <td>
                                <select name="books_recommend" id="">
                                    <c:if test="${books.books_recommend=='精品推荐'}">
                                    <option value="精品推荐" selected>精品推荐</option>
                                    <option value="普通推荐" >普通推荐</option>
                                    <option value="史诗推荐">史诗推荐</option>
                                    </c:if>
                                    <c:if test="${books.books_recommend=='普通推荐'}">
                                        <option value="精品推荐" >精品推荐</option>
                                        <option value="普通推荐"selected >普通推荐</option>
                                        <option value="史诗推荐">史诗推荐</option>
                                    </c:if>
                                    <c:if test="${books.books_recommend=='史诗推荐'}">
                                        <option value="精品推荐" >精品推荐</option>
                                        <option value="普通推荐" >普通推荐</option>
                                        <option value="史诗推荐" selected>史诗推荐</option>
                                    </c:if>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <th>书籍概述:</th>
                            <td>
                                <textarea name="books_description" class="common-textarea" id="description" cols="30" style="width: 98%;" rows="10" placeholder="请输入书籍简介或概述..." >${books.books_description}</textarea>
                            </td>

                        </tr>

                        <tr>
                            <th></th>
                            <td>
                                <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>