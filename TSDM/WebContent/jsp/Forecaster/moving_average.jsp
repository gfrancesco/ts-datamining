<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.ck.gui.Constants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Moving Average Forecaster Method</title>
</head>
<body>
HAHAHAHHAHA!!

<div>
		<label>Select Data Set</label>
		<select id="dropdown" class="TopMenuButtons">
			<%
				Constants.DatasetOptions[] datasets = Constants.DatasetOptions.values();
				for(int i=0; i<datasets.length; i++)
					out.println("<option value=\"" + datasets[i] + "\">" + datasets[i] + "</option>");
			%>
		</select>
		<br/>
		<br/>		
		<input id="button_dtwCalc" class="TopMenuButtons" style="" type="button" value="Calculate"/>		
</div>
<p id="ajax_moving_average_result">
		hehe	
	</p>
	<script type="text/javascript">
		$("#button_dtwCalc").button().click(function () {			
	        $("#ajax_dtw_results").load("MainController", 
	        		{"taskType" : "<%=Constants.TaskType.SIMILARITY %>",
	        		 "algorithmType" : "<%=Constants.AlgorithmType.DTW %>",
	        		 "dataset" : $("#dropdown option:selected").val()
	        		}
	        );
	    });
	</script>
</body>
</html>