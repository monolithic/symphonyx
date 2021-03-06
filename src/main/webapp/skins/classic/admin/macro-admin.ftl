<#macro admin type>
<#include "../macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <#if type == "index">
        <@head title="${consoleIndexLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "users">
        <@head title="${userAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "addUser">
        <@head title="${addUserLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "articles">
        <@head title="${articleAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "comments">
        <@head title="${commentAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "tags">
        <@head title="${tagAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "orders">
        <@head title="${orderAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "chargeRecords">
        <@head title="${chargePointLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "pointCharge">
        <@head title="${chargePointLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "misc">
        <@head title="${miscAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "products">
        <@head title="${productAdminLabel} - ${symphonyLabel}"></@head>
        </#if>
        <#if type == "addProduct">
        <@head title="${addProductLabel} - ${symphonyLabel}"></@head>
        </#if>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/home${miniPostfix}.css?${staticResourceVersion}" />
    </head>
    <body>
        <#include "../header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="responsive-show">
                    <ul class="tab fn-clear">
                        <#if "adminRole" == userRole>
                        <li<#if type == "index"> class="current"</#if>><a href="/admin">${consoleIndexLabel}</a></li>
                        <li<#if type == "users" || type == "addUser"> class="current"</#if>><a href="/admin/users">${userAdminLabel}</a></li>
                        <li<#if type == "articles"> class="current"</#if>><a href="/admin/articles">${articleAdminLabel}</a></li>
                        <li<#if type == "comments"> class="current"</#if>><a href="/admin/comments">${commentAdminLabel}</a></li>
                        <li<#if type == "tags"> class="current"</#if>><a href="/admin/tags">${tagAdminLabel}</a></li>
                        <li<#if type == "orders"> class="current"</#if>><a href="/admin/orders">${orderAdminLabel}</a></li>
                        <li<#if type == "products" || type == "addProduct"> class="current"</#if>><a href="/admin/products">${productAdminLabel}</a></li>
                        <li<#if type == "chargeRecords"  || type == "pointCharge"> class="current"</#if>><a href="/admin/charge-records">${chargeAdminLabel}</a></li>
                        <li<#if type == "misc"> class="current"</#if>><a href="/admin/misc">${miscAdminLabel}</a></li>
                        <#elseif "mallAdminRole" == userRole>
                        <li<#if type == "orders"> class="current"</#if>><a href="/admin/orders">${orderAdminLabel}</a></li>
                        <li<#if type == "chargeRecords"  || type == "pointCharge"> class="current"</#if>><a href="/admin/charge-records">${chargeAdminLabel}</a></li>
                        <li<#if type == "products" || type == "addProduct"> class="current"</#if>><a href="/admin/products">${productAdminLabel}</a></li>
                        </#if>
                    </ul>
                    <br/>
                </div>
                <#nested>
                <div class="side">
                    <ul class="note-list responsive-hide">
                        <#if "adminRole" == userRole>
                        <li<#if type == "index"> class="current"</#if>><a href="/admin">${consoleIndexLabel}</a></li>
                        <li<#if type == "users" || type == "addUser"> class="current"</#if>><a href="/admin/users">${userAdminLabel}</a></li>
                        <li<#if type == "articles"> class="current"</#if>><a href="/admin/articles">${articleAdminLabel}</a></li>
                        <li<#if type == "comments"> class="current"</#if>><a href="/admin/comments">${commentAdminLabel}</a></li>
                        <li<#if type == "tags"> class="current"</#if>><a href="/admin/tags">${tagAdminLabel}</a></li>
                        <li<#if type == "orders"> class="current"</#if>><a href="/admin/orders">${orderAdminLabel}</a></li>
                        <li<#if type == "products" || type == "addProduct"> class="current"</#if>><a href="/admin/products">${productAdminLabel}</a></li>
                        <li<#if type == "chargeRecords"  || type == "pointCharge"> class="current"</#if>><a href="/admin/charge-records">${chargeAdminLabel}</a></li>
                        <li<#if type == "misc"> class="current"</#if>><a href="/admin/misc">${miscAdminLabel}</a></li>
                        <#elseif "mallAdminRole" == userRole>
                        <li<#if type == "orders"> class="current"</#if>><a href="/admin/orders">${orderAdminLabel}</a></li>
                        <li<#if type == "chargeRecords"  || type == "pointCharge"> class="current"</#if>><a href="/admin/charge-records">${chargeAdminLabel}</a></li>
                        <li<#if type == "products" || type == "addProduct"> class="current"</#if>><a href="/admin/products">${productAdminLabel}</a></li>
                        </#if>
                    </ul>
                </div>
            </div>
        </div>
        <#include "../footer.ftl">
    </body>
</html>
</#macro>
