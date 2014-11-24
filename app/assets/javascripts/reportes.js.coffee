# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  Chart.defaults.global.responsive = true;
  data = {
    labels : ["January","February","March","April","May","June","July"],
    datasets : [
      {
        fillColor : "rgba(220,220,220,0.5)",
        strokeColor : "rgba(220,220,220,1)",
        pointColor : "rgba(220,220,220,1)",
        pointStrokeColor : "#fff",
        data : [65,59,90,81,56,55,40]
      },
      {
        fillColor : "rgba(151,187,205,0.5)",
        strokeColor : "rgba(151,187,205,1)",
        pointColor : "rgba(151,187,205,1)",
        pointStrokeColor : "#fff",
        data : [28,48,40,19,96,27,100]
      }
    ]
  }

  # Solicitud Reporte Index
  chartOneDiv = $("#canvas")
  datosDeps = $("#datos").data('deps_solis')
  chartTwoDiv = $("#canvas2")

  # Solicitud Reporte Show
  pieLegend = "<ul class=\"<%=name.toLowerCase()%>-legend list-group\"><% for (var i=0; i<segments.length; i++){%><li class=\" list-group-item\"><span class=\"badge\" style=\"background-color:<%=segments[i].fillColor%> !important;\"><%=segments[i].value%></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
  datos = $("#datos").data('implementos')
  chartThreeDiv = $("#canvas_pie_show")

  # Draw
  if chartOneDiv.length
    chartOne = new Chart($("#canvas").get(0).getContext("2d")).Line(data)
    chartTwo = new Chart($("#canvas2").get(0).getContext("2d")).Bar(datosDeps)
  else if chartThreeDiv.length
    chartThree = new Chart($("#canvas_pie_show").get(0).getContext("2d")).Pie(datos, {legendTemplate: pieLegend})
    document.getElementById("legend").innerHTML = chartThree.generateLegend()
