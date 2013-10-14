 <%--
 *  Copyright 2009 Society for Health Information Systems Programmes, India (HISP India)
 *
 *  This file is part of Patient-dashboard module.
 *
 *  Patient-dashboard module is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  Patient-dashboard module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Patient-dashboard module.  If not, see <http://www.gnu.org/licenses/>.
 *
--%> 
<%@ include file="/WEB-INF/template/include.jsp" %>

<c:choose>

<c:when test="${not empty clinicalSummaries}">
<table cellpadding="5" cellspacing="0" width="100%">
<tr>
	<th><spring:message code="patientdashboard.clinicalSummary.view"/></th>
	<th><spring:message code="patientdashboard.clinicalSummary.dateOfVisit"/></th>
	<!--<th><spring:message code="patientdashboard.clinicalSummary.typeOfVisit"/></th>
	--><th><spring:message code="patientdashboard.clinicalSummary.treatingDoctor"/></th>
	<th><spring:message code="patientdashboard.clinicalSummary.diagnosis"/></th>
	<th><spring:message code="patientdashboard.clinicalSummary.procedures"/></th>
	<!-- Sagar Bele Date:29-12-2012 Add field of visit outcome for Bangladesh requirement #552-->
	<th><spring:message code="patientdashboard.clinicalSummary.visitOutcome"/></th>	
	<!-- <th><spring:message code="patientdashboard.clinicalSummary.linkedVisit"/></th> -->
</tr>

<c:forEach items="${clinicalSummaries}" var="clinicalSummary" varStatus="varStatus">
<tr class='${varStatus.index % 2 == 0 ? "oddRow" : "evenRow" } '>
	<td><a href="#" onclick="DASHBOARD.detailClinical('${ clinicalSummary.id}');"><small>[Detail]</small></a> </td>
	<td><openmrs:formatDate date="${clinicalSummary.dateOfVisit}" type="textbox"/></td>
	<!--<td>${clinicalSummary.typeOfVisit}</td>
	--><td>${clinicalSummary.treatingDoctor}</td>
	<td>${clinicalSummary.diagnosis}</td>
	<!-- Abhishek-Ankur Date: 06th Oct 2013 New Requirement: OT procedure summary -->
	<td><a href="#" onclick="DASHBOARD.detailProcedure('${clinicalSummary.id}');">${clinicalSummary.procedures}</a></td>
	<!-- Sagar Bele Date:29-12-2012 Add field of visit outcome for Bangladesh requirement #552-->
	<td>${clinicalSummary.visitOutcomes}</td><!--
	<td>${clinicalSummary.linkedVisit}</td>
--></tr>
</c:forEach>
</table>
</c:when>
</c:choose>