<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/MVPActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPContract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterClass}.${ktOrJavaExt}" />

</recipe>
