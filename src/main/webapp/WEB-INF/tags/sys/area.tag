<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="province" type="java.lang.String" required="false" %>
<%@ attribute name="city" type="java.lang.String" required="false" description="默认选中城市"%>
<%@ attribute name="districtcounty" type="java.lang.String" required="false" description="默认选中区县"%>
<%@ attribute name="street" type="java.lang.String" required="false" description="默认选中街道"%>
<%@ attribute name="community" type="java.lang.String" required="false" description="默认选中社区"%>
<%@ attribute name="provincePath" type="java.lang.String" required="false"%>
<%@ attribute name="cityPath" type="java.lang.String" required="false"%>
<%@ attribute name="districtcountyPath" type="java.lang.String" required="true"%>
<%@ attribute name="streetPath" type="java.lang.String" required="true"%>
<%@ attribute name="communityPath" type="java.lang.String" required="true"%>
<%@ attribute name="provinceName" type="java.lang.String" required="false"%>
<%@ attribute name="cityName" type="java.lang.String" required="false"%>
<%@ attribute name="districtcountyName" type="java.lang.String" required="false"%>
<%@ attribute name="streetName" type="java.lang.String" required="false"%>
<%@ attribute name="communityName" type="java.lang.String" required="false"%>
<%@ attribute name="id" type="java.lang.String" required="false" description="如果页面有多个标签，设置不一样的序号"%>
<%@ attribute name="provinceHide" type="java.lang.String" required="false" description="添加选择隐藏，有的查询列表，从区县开始，不显示省份、城市"%>
<script type="text/javascript">
    $(document).ready(function() {
        $("[data-area-cha=${not empty id ? id: '1'}]").each(function(i, item) {
            try {
                $(item).change(function comprehensiveIndexQuery() {
                    var value = $(item).val();
                    var area = $(item).attr("data-area");
                    if ($(item).value != 0) {
                        $.ajax({
                            type : "post",
                            url : "${ctxf}/visit/statistics/getAreaist",
                            async : false,
                            data : {
                                "parentId" : value
                            },
                            dataType : 'json',
                            success : function(result) {
                                if (result.length != 0) {
                                    $("#" + area).empty();
                                    var optionselected = $("<option>").text("请选择");
                                    optionselected.val("");
                                    $("#" + area).append(optionselected); //处理第一次选择第一个值的时候不触发change事件
                                    for (var i = 0; i < result.length; i++) {
                                        var option = $("<option>").val(result[i].id).text(result[i].name);
                                        $("#" + area).append(option);
                                    }
                                }
                            }
                        });
                    } else {
                        ("#" + area).empty();
                    }
                });
            } catch (exception) {

            }
        });
        try {
            var m = new Map();
            m.set("s${not empty city ? city: 'city'}", "${cityPath}");
            m.set("s${not empty districtcounty ? districtcounty: 'districtcounty'}", "${districtcountyPath}");
            m.set("s${not empty street ? street: 'street'}", "${streetPath}");
            m.set("s${not empty community ? community: 'community'}", "${communityPath}");
            $("[data-next-aja=${not empty id ? id: '1'}]").each(function(i, item) {
                var next = $(item).attr("data-next");
                $.ajax({
                    type : "post",
                    url : "${ctxf}/visit/statistics/getAreaist",
                    async : false,
                    data : {
                        "parentId" : next
                    },
                    dataType : 'json',
                    success : function(result) {
                        if (result.length != 0) {
                            $(item).empty();
                            var optionselected = $("<option>").text("请选择");
                            optionselected.val("");
                            $(item).append(optionselected); //处理第一次选择第一个值的时候不触发change事件
                            for (var i = 0; i < result.length; i++) {
                                var option = $("<option>").val(result[i].id).text(result[i].name);
                                $(item).append(option);
                                if (result[i].id == m.get("s" + item.id)) {
                                    $("#s2id_" + item.id + " a span:eq(0)").html(result[i].name);
                                }
                            }
                        }
                    }
                });
                $(item).val(m.get("s" + item.id));
            });
        } catch (exception) {

        }
    });
</script>
<!-- 如果登录了就跟着权限配置走 -->
<c:if test="${provinceHide!='true'}">
    <shiro:hasPermission name="province:view">
        <li><label>${not empty provinceName ? provinceName: '所属省份'}：</label> <form:select path="${not empty province ? province: 'province'}"
                                                                                          class="input-medium " data-area="${not empty city ? city: 'city'}" data-area-cha="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
            <form:options items="${fnz:getProvinceList()}" itemLabel="name" itemValue="id" htmlEscape="false" />
        </form:select></li>
    </shiro:hasPermission>
    <shiro:hasPermission name="city:view">
        <li><label>${not empty cityName ? cityName: '所属城市'}：</label> <form:select path="${not empty city ? city: 'city'}" class="input-medium "
                                                                                  data-area="${not empty districtcounty ? districtcounty: 'districtcounty'}" data-area-cha="${not empty id ? id: '1'}" data-next="${provincePath}"
                                                                                  data-next-aja="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
        </form:select></li>
    </shiro:hasPermission>
</c:if>
<shiro:hasPermission name="districtcounty:view">
    <c:if test="${provinceHide!='true'}">
        <li><label>${not empty districtcountyName ? districtcountyName: '所属区县'}：</label> <form:select
                path="${not empty districtcounty ? districtcounty: 'districtcounty'}" class="input-medium " data-area="${not empty street ? street: 'street'}"
                data-area-cha="${not empty id ? id: '1'}" data-next="${cityPath}" data-next-aja="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
        </form:select></li>
    </c:if>
    <c:if test="${provinceHide=='true'}">
        <li><label>${not empty districtcountyName ? districtcountyName: '所属区县'}：</label> <form:select
                path="${not empty districtcounty ? districtcounty: 'districtcounty'}" class="input-medium " data-area="${not empty street ? street: 'street'}"
                data-area-cha="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
            <form:options items="${fnz:getOutsideNameList()}" itemLabel="name" itemValue="id" htmlEscape="false" />
        </form:select></li>
    </c:if>
</shiro:hasPermission>
<shiro:hasPermission name="street:view">
    <li><label>${not empty streetName ? streetName: '所属街道'}：</label> <form:select path="${not empty street ? street: 'street'}" class="input-medium "
                                                                                  data-area="${not empty community ? community: 'community'}" data-area-cha="${not empty id ? id: '1'}" data-next="${districtcountyPath}"
                                                                                  data-next-aja="${not empty id ? id: '1'}">
        <form:option value="" label="请选择" />
    </form:select></li>
</shiro:hasPermission>
<shiro:hasPermission name="community:view">
    <li><label>${not empty communityName ? communityName: '所属社区'}：</label> <form:select path="${not empty community ? community: 'community'}"
                                                                                        class="input-medium " data-next="${streetPath}" data-next-aja="${not empty id ? id: '1'}">
        <form:option value="" label="请选择" />
    </form:select></li>
</shiro:hasPermission>
<!-- 如果没有登录权限也显示 -->
<c:if test="${provinceHide!='true'}">
    <shiro:notAuthenticated>
        <li><label>${not empty provinceName ? provinceName: '所属省份'}：</label> <form:select path="${not empty province ? province: 'province'}"
                                                                                          class="input-medium " data-area="${not empty city ? city: 'city'}" data-area-cha="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
            <form:options items="${fnz:getProvinceList()}" itemLabel="name" itemValue="id" htmlEscape="false" />
        </form:select></li>
    </shiro:notAuthenticated>
    <shiro:notAuthenticated>
        <li><label>${not empty cityName ? cityName: '所属城市'}：</label> <form:select path="${not empty city ? city: 'city'}" class="input-medium "
                                                                                  data-area="${not empty districtcounty ? districtcounty: 'districtcounty'}" data-area-cha="${not empty id ? id: '1'}" data-next="${provincePath}"
                                                                                  data-next-aja="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
        </form:select></li>
    </shiro:notAuthenticated>
</c:if>
<shiro:notAuthenticated>
    <c:if test="${provinceHide!='true'}">
        <li><label>${not empty districtcountyName ? districtcountyName: '所属区县'}：</label> <form:select
                path="${not empty districtcounty ? districtcounty: 'districtcounty'}" class="input-medium " data-area="${not empty street ? street: 'street'}"
                data-area-cha="${not empty id ? id: '1'}" data-next="${cityPath}" data-next-aja="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
        </form:select></li>
    </c:if>
    <c:if test="${provinceHide=='true'}">
        <li><label>${not empty districtcountyName ? districtcountyName: '所属区县'}：</label> <form:select
                path="${not empty districtcounty ? districtcounty: 'districtcounty'}" class="input-medium " data-area="${not empty street ? street: 'street'}"
                data-area-cha="${not empty id ? id: '1'}">
            <form:option value="" label="请选择" />
            <form:options items="${fnz:getOutsideNameList()}" itemLabel="name" itemValue="id" htmlEscape="false" />
        </form:select></li>
    </c:if>
</shiro:notAuthenticated>
<shiro:notAuthenticated>
    <li><label>${not empty streetName ? streetName: '所属街道'}：</label> <form:select path="${not empty street ? street: 'street'}" class="input-medium "
                                                                                  data-area="${not empty community ? community: 'community'}" data-area-cha="${not empty id ? id: '1'}" data-next="${districtcountyPath}"
                                                                                  data-next-aja="${not empty id ? id: '1'}">
        <form:option value="" label="请选择" />
    </form:select></li>
</shiro:notAuthenticated>
<shiro:notAuthenticated>
    <li><label>${not empty communityName ? communityName: '所属社区'}：</label> <form:select path="${not empty community ? community: 'community'}"
                                                                                        class="input-medium " data-next="${streetPath}" data-next-aja="${not empty id ? id: '1'}">
        <form:option value="" label="请选择" />
    </form:select></li>
</shiro:notAuthenticated>