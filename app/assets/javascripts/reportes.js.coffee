# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  #Global chartjs vars
  Chart.defaults.global.responsive = true;

  # Solicitud Reporte Index
  chartOneDiv = $("#canvas2")
  datosDeps = $("#datos_deps").data('departamentos')

  # Solicitud Reporte Show
  pieLegend = "<ul class=\"<%=name.toLowerCase()%>-legend list-group\"><% for (var i=0; i<segments.length; i++){%><li class=\" list-group-item\"><span class=\"badge\" style=\"background-color:<%=segments[i].fillColor%> !important;\"><%=segments[i].value%></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
  datos = $("#datos").data('implementos')
  chartThreeDiv = $("#canvas_pie_show")

  # Draw
  if chartOneDiv.length
    chartTwo = new Chart($("#canvas2").get(0).getContext("2d")).Bar(datosDeps)
  else if chartThreeDiv.length
    chartThree = new Chart($("#canvas_pie_show").get(0).getContext("2d")).Pie(datos, {legendTemplate: pieLegend})
    document.getElementById("legend").innerHTML = chartThree.generateLegend()
