[#include "NotificationCommonsText.ftl" ]
<a href="${baseUrl}/browse/${buildKey}/">[@buildNotificationTitleText build buildNumber/]</a> [#lt]
[#if triggerReasonDescription?? && triggerReasonDescription?has_content]${triggerReasonDescription}[/#if][#lt]

