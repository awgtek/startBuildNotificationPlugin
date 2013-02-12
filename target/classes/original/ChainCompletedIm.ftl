[#-- @ftlvariable name="baseUrl" type="java.lang.String" --]
[#-- @ftlvariable name="buildSummary" type="com.atlassian.bamboo.chains.ChainResultsSummary" --]
[#-- @ftlvariable name="build" type="com.atlassian.bamboo.chains.Chain" --]
[#include "notificationCommons.ftl"]
[#include "notificationCommonsText.ftl" ]
[#assign authors = buildSummary.uniqueAuthors/]
[#if buildSummary.successful]
[@buildNotificationTitleText build buildSummary/] was SUCCESSFUL[@showRestartCount buildSummary/]. [#if authors?has_content][@showAuthorSummary authors/][/#if][#lt]
[#else]
[@buildNotificationTitleText build buildSummary/] has FAILED[@showRestartCount buildSummary/]. [#if authors?has_content][@showAuthorSummary authors/][/#if][#lt]
[/#if]
[@showJobAndTestSummary buildSummary/]
${baseUrl}/browse/${buildSummary.buildResultKey}/
