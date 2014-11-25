# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

  #Global chartjs vars
  #Chart.defaults.global.responsive = true;

  # Solicitud Reporte Index
  chartOneDiv = $("#cvssolicitudes")
  chartThreeDiv = $("#cvssolicitudes2")
  dataPold = $("#datos_sols").data('departamentos')

  # Deps Reporte Index
  chartTwoDiv = $("#cvsdeps")
  dataDep = $("#datos_deps").data('departamentos')

  dataPol = [
    {
      value: 300,
      color:"#F7464A",
      highlight: "#FF5A5E",
      label: "Red"
    },
    {
      value: 50,
      color: "#46BFBD",
      highlight: "#5AD3D1",
      label: "Green"
    },
    {
      value: 100,
      color: "#FDB45C",
      highlight: "#FFC870",
      label: "Yellow"
    },
    {
      value: 40,
      color: "#949FB1",
      highlight: "#A8B3C5",
      label: "Grey"
    },
    {
      value: 120,
      color: "#4D5360",
      highlight: "#616774",
      label: "Dark Grey"
    }

  ];

  # Solicitud Reporte Show
  #pieLegend = "<ul class=\"<%=name.toLowerCase()%>-legend list-group\"><% for (var i=0; i<segments.length; i++){%><li class=\" list-group-item\"><span class=\"badge\" style=\"background-color:<%=segments[i].fillColor%> !important;\"><%=segments[i].value%></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
  #datos = $("#datos").data('implementos')
  #chartThreeDiv = $("#canvas_pie_show")

  # Draw
  if chartOneDiv.length
    chartOne = new Chart(chartOneDiv.get(0).getContext("2d")).PolarArea(dataPol)
    chartThree = new Chart(chartThreeDiv.get(0).getContext("2d")).PolarArea(dataPol)
    chartTwo = new Chart(chartTwoDiv.get(0).getContext("2d")).Bar(dataDep)
#else if chartThreeDiv.length
  #  chartThree = new Chart($("#canvas_pie_show").get(0).getContext("2d")).Pie(datos, {legendTemplate: pieLegend})
  #  document.getElementById("legend").innerHTML = chartThree.generateLegend()
