<!DOCTYPE html>
<html>
<head>
<#assign basePath=request.contextPath/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台管理系统</title>
    <meta name="author" content="DeathGhost" />
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script>

        (function($){
            $(window).load(function(){

                $("a[rel='load-content']").click(function(e){
                    e.preventDefault();
                    var url=$(this).attr("href");
                    $.get(url,function(data){
                        $(".content .mCSB_container").append(data); //load new content inside .mCSB_container
                        //scroll-to appended content
                        $(".content").mCustomScrollbar("scrollTo","h2:last");
                    });
                });

                $(".content").delegate("a[href='top']","click",function(e){
                    e.preventDefault();
                    $(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
                });

            });
        })(jQuery);
    </script>
</head>
<body>
<!--header-->
<header>
    <h1><img src="images/admin_logo.png"/></h1>
    <ul class="rt_nav">
        <li><a href="http://www.mycodes.net" target="_blank" class="website_icon">站点首页</a></li>
        <li><a href="#" class="clear_icon">清除缓存</a></li>
        <li><a href="#" class="admin_icon">DeathGhost</a></li>
        <li><a href="#" class="set_icon">账号设置</a></li>
        <li><a href="login.html" class="quit_icon">安全退出</a></li>
    </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
    <h2><a href="index.html">起始页</a></h2>
    <ul>
        <li>
            <dl>
                <dt>产品相关信息</dt>
                <!--当前链接则添加class:active-->
                <dd><a href="productionList.ftl">理财产品列表</a></dd>
                <dd><a href="carList.ftl">车辆信息列表</a></dd>
                <dd><a href="borrList.ftl" class="active">贷款人信息</a></dd>
                <dd><a href="dateList.ftl">贷款期限信息</a></dd>
                <dd><a href="riskList.ftl">贷款风控信息</a></dd>
                <dd><a href="interestList.ftl">贷款利率信息</a></dd>
                <dd><a href="refundList.ftl">贷款还款方式信息</a></dd>
                <dd><a href="prodintrList.ftl">理财产品简介信息</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>订单信息</dt>
                <dd><a href="order_list.html">订单列表示例</a></dd>
                <dd><a href="order_detail.html">订单详情示例</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>会员管理</dt>
                <dd><a href="user_list.html">会员列表示例</a></dd>
                <dd><a href="user_detail.html">添加会员（详情）示例</a></dd>
                <dd><a href="user_rank.html">会员等级示例</a></dd>
                <dd><a href="adjust_funding.html">会员资金管理示例</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>基础设置</dt>
                <dd><a href="setting.html">站点基础设置示例</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>配送与支付设置</dt>
                <dd><a href="express_list.html">配送方式</a></dd>
                <dd><a href="pay_list.html">支付方式</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>在线统计</dt>
                <dd><a href="discharge_statistic.html">流量统计</a></dd>
                <dd><a href="sales_volume.html">销售额统计</a></dd>
            </dl>
        </li>
        <li>
            <p class="btm_infor">© DeathGhost.cn 版权所有</p>
        </li>
    </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
    <div class="rt_content">
        <div class="page_title">
            <h2 class="fl">商品列表示例</h2>
            <a href="product_detail.html" class="fr top_rt_btn add_icon">添加商品</a>
        </div>
        <section class="mtb">
            <select class="select">
                <option>下拉菜单</option>
                <option>菜单1</option>
            </select>
            <input type="text" class="textbox textbox_225" placeholder="输入产品关键词或产品货号..."/>
            <input type="button" value="查询" class="group_btn"/>
        </section>
        <table class="table">
            <tr>
                <th>借款人姓名</th>
                <th>借款人身份证号</th>
                <th>借款公司</th>
                <th>借款公司编码</th>
                <th>凭证图片1</th>
                <th>凭证图片2</th>
                <th>凭证图片3</th>
                <th>凭证图片4</th>
                <th>凭证图片5</th>
                <th>凭证图片6</th>
                <th>凭证图片7</th>
                <th>凭证图片8</th>
                <th>凭证图片9</th>
                <th>对应车辆编号</th>
                <th>借款期限编号</th>
                <th>借款起始时间</th>
                <th>借款结束时间</th>
            </tr>
            <#list borrPageinfo.list as emp>
                <tr>
                   <!--遍历取值-->

                    <th>
                        <button class="btn btn-primary">
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>  编辑
                        </button>
                        <button class="btn btn-danger">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>  删除
                        </button>
                    </th>
                </tr>
            </#list>
        </table>
        <aside class="paging">
	<span style="white-space:pre;">
	</span>
            <!--分页-->
            <#--<!--<div class="col-md-12 column">-->
                <#--<ul class="pagination pull-right">-->
				<#--<#if currentPage lte 1>-->
                    <#--<li class="disabled">-->
                        <#--<a href="#">上一页</a>-->
                    <#--</li>-->
				<#--<#else>-->
                    <#--<li>-->
                        <#--<a href="/sell/seller/order/list?page=${currentPage - 1}&size=${size}">上一页</a>-->
                    <#--</li>-->
				<#--</#if>-->
                    <#--<!--第一页&ndash;&gt;-->
				<#--<#if (productInfoPage.getTotalPages()> 0)>-->
                    <#--<li <#if currentPage==1>class="disabled"</#if>>-->
                        <#--<a href="/sell/seller/order/list?page=1&size=${size}">1</a>-->
                    <#--</li>-->
				<#--</#if>-->

                    <#--<!--如果不只有一页&ndash;&gt;-->
				<#--<#if (productInfoPage.getTotalPages()> 1)>-->
                    <#--<!--如果当前页往前查3页不是第2页&ndash;&gt;-->
					<#--<#if ((currentPage - 3)> 2)>-->
                        <#--<li><span class="text">…</span></li>-->
					<#--</#if>-->

                    <#--<!--当前页的前3页和后3页&ndash;&gt;-->
					<#--<#list (currentPage - 3)..(currentPage + 3) as index>-->
					<#--<!--如果位于第一页和最后一页之间&ndash;&gt;-->
						<#--<#if (index> 1) && (index< productInfoPage.getTotalPages())>-->
                            <#--<li <#if currentPage==index>class="disabled"</#if>>-->
                                <#--<a href="/sell/seller/order/list?page=${index}&size=${size}">${index}</a>-->
                            <#--</li>-->
						<#--</#if>-->
					<#--</#list>-->

                    <#--<!--如果当前页往后查3页不是倒数第2页&ndash;&gt;-->
					<#--<#if (currentPage + 3) < (productInfoPage.getTotalPages() - 1)>-->
                        <#--<li><span class="text">…</span></li>-->
					<#--</#if>-->

                    <#--<!--最后页&ndash;&gt;-->
                    <#--<li <#if currentPage==productInfoPage.getTotalPages()>class="disabled"</#if>>-->
                        <#--<a href="/sell/seller/order/list?page=${productInfoPage.getTotalPages()}&size=${size}">${productInfoPage.getTotalPages()}</a>-->
                    <#--</li>-->
				<#--</#if>-->

				<#--<#if currentPage gte productInfoPage.getTotalPages()>-->
                    <#--<li class="disabled">-->
                        <#--<a href="#">下一页</a>-->
                    <#--</li>-->
				<#--<#else>-->
                    <#--<li>-->
                        <#--<a href="/sell/seller/order/list?page=${currentPage + 1}&size=${size}">下一页</a>-->
                    <#--</li>-->
				<#--</#if>-->
                <#--</ul>-->
            <#--</div>&ndash;&gt;-->
            <div class="col-md-12 column">
                <ul class="pagination pull-right">
                <#if borrPageinfo.pageNum lte 1>
                    <li class="disabled">
                    <#--<c:when test="${pageInfo.pageNum ==1}">-->
                        <a href="#">上一页</a>
                    </li>
                <#else>
                    <li>
                        <a href="/borrower/borrList/?pg=${borrPageinfo.pageNum-1}">上一页</a>
                    </li>
                </#if>

                <#list 1..borrPageinfo.pages as index>
                    <#if borrPageinfo.pageNum == index>
                        <li class="disabled"><a href="#">${index}</a></li>
                    <#else>
                        <li><a href="/borrower/borrList/?pg=${index}">${index}</a></li>
                    </#if>
                </#list>

                <#if borrPageinfo.pageNum gte borrPageinfo.pages>
                    <li class="disabled">
                    <#--<c:when test="${pageInfo.pageNum ==1}">-->
                        <a href="#">下一页</a>
                    </li>
                <#else>
                    <li>
                        <a href="/borrower/borrList/?pg=${borrPageinfo.pageNum+1}">下一页</a>
                    </li>
                </#if>
                </ul>
            </div>
    </div>
        </aside>
    </div>
</section>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>