# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

  #Global chartjs vars
  #Chart.defaults.global.responsive = true;

  # Solicitud Reporte Index
  chartOneDiv = $("#cvssolicitudes")
  dataPol = $("#datos_sols").data('solis')

  # Disponibilidad
  chartThreeDiv = $("#cvsimps")
  dataDisp = $("#datos_imps").data('disponibilidad')

  # Deps Reporte Index
  chartTwoDiv = $("#cvsdeps")
  dataDep = $("#datos_deps").data('departamentos')

  # Deps Reporte Index
  chartFourDiv = $("#cvsdepsvent")
  dataDepVent = $("#datos_deps_vent").data('departamentos')

  # Draw
  if chartOneDiv.length
    chartOne = new Chart(chartOneDiv.get(0).getContext("2d")).PolarArea(dataPol)
    chartThree = new Chart(chartThreeDiv.get(0).getContext("2d")).Doughnut(dataDisp)
    chartTwo = new Chart(chartTwoDiv.get(0).getContext("2d")).Bar(dataDep)
  else if chartFourDiv.length
    chartFour = new Chart(chartFourDiv.get(0).getContext("2d")).Bar(dataDepVent)
