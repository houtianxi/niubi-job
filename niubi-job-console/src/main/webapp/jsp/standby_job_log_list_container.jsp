<%--

    Copyright 2002-2016 the original author or authors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    
--%>
<%--
  User: Xiaolong Zuo
  Time: 16/1/17 05:21
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"><a href="${pageContext.request.contextPath}/standbyDashboard/index" title="Go to Home" class="tip-bottom"><i
                class="icon-home"></i> Home</a></div>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="widget-box">
                <div class="widget-title"><span class="icon"><i class="icon-th"></i></span>
                    <h5>Operation log</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered data-table">
                        <thead>
                        <tr>
                            <th>Result</th>
                            <th>Operation</th>
                            <th>Job id</th>
                            <th>Cron</th>
                            <th>Create time</th>
                            <th>Response time</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${jobLogs}" var="jobLog" varStatus="status">
                            <tr class="gradeA">
                                <td><span class="label ${jobLog.operationResultLabelClass}">${jobLog.operationResult}</span></td>
                                <td><span class="label ${jobLog.operationLabelClass}">${jobLog.operation}</span></td>
                                <td>
                                    <a data-content="${jobLog.errorMessage}" data-placement="right" data-toggle="popover" class="btn btn-mini btn-info popoverElement" href="#" data-original-title="Error message">
                                            ${jobLog.groupName}.${jobLog.jobName}
                                    </a>
                                </td>
                                <td>${jobLog.cron}</td>
                                <td>${jobLog.createDateString}</td>
                                <td>${jobLog.modifyDateString}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
