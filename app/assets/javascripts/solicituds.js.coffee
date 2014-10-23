# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

  max_fields_coms  = 1000                                # Maximum input boxes allowed
  wrapper          = $(".input_fields_wrap")             # Fields wrapper
  add_button       = $(".add_field_button")              # Add button ID
  x                = 1                                   # Initlal text box count
  siguiente_first  = $('#siguiente')
  back_first       = $('#regresar')
  clicks_form      = 0

  $('#solicitud_municipio').parent().hide()
  municipios = $('#solicitud_municipio').html()
  $('#solicitud_departamento').change ->
    departamento = $('#solicitud_departamento :selected').text()
    departamento_protegido = departamento.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(municipios).filter("optgroup[label='#{departamento_protegido}']").html()
    if options
      $('#solicitud_municipio').html(options)
      $('#solicitud_municipio').parent().show()
    else
      $('#solicitud_municipio').empty()
      $('#solicitud_municipio').parent().hide()

  $(add_button).click (event) ->
    event.preventDefault()
    if x < max_fields_coms
      x++

      $(wrapper).append('<div><input class="text optional" id="solicitud_comunidades" multiple="multiple" name="solicitud[comunidades][]"><a href="#" class="remove_field btn btn-default">Eliminar</a></div>') # add input box

  $(wrapper).on 'click', ".remove_field", (e) ->
      e.preventDefault(); $(this).parent('div').remove(); x--

  ###
  ben_dep = '*[id*=_departamento]'
  ben_mun = '*[id*=_municipio]'

  console.log(ben_dep.html)

  $(ben_mun).parent().hide()
  ben_municipios = $(ben_mun).html()
  $('#beneficiario_departamento').change ->
    ben_departamento = $(ben_dep + ' :selected').text()
    ben_departamento_protegido = ben_departamento.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    ben_options = $(ben_municipios).filter("optgroup[label='#{ben_departamento_protegido}']").html()
    if ben_options
      $(ben_mun).html(options)
      $(ben_mun).parent().show()
    else
      $(ben_mun).empty()
      $(ben_mun).parent().hide()
###

  # Initial hide
  $('#place').hide()
  $('#implementos').hide()
  $('#comunidades').hide()
  $('#sol_submit').hide()
  $('#instrucciones_solicitud').hide()
  $('#disciplina').hide()
  $('#beneficiarios').hide()

  $(siguiente_first).click (event) ->
    if clicks_form == 0
      event.preventDefault()
      $('#place').show()
      $('#implementos').show()
      $('#solicitante').hide()
      $('#comunidades').show()
      $('#progress').css('width', '40%')
      $('#progress').text('Solicitud')
      $('#instrucciones_solicitante').hide()
      $('#instrucciones_solicitud').show()
      $('#disciplina').show()
      $('#beneficiarios').hide()
      clicks_form = clicks_form + 1
    else if clicks_form == 1
      event.preventDefault()
      $('#place').hide()
      $('#implementos').hide()
      $('#solicitante').hide()
      $('#comunidades').hide()
      $('#progress').css('width', '80%')
      $('#progress').text('Beneficiarios')
      $('#instrucciones_solicitante').hide()
      $('#instrucciones_solicitud').hide()
      $('#disciplina').hide()
      $('#beneficiarios').show()
      $('#siguiente').hide()
      $('#sol_submit').show()
      clicks_form = clicks_form + 1

  $(back_first).click (event) ->
    if clicks_form == 1
      event.preventDefault()
      $('#place').hide()
      $('#implementos').hide()
      $('#comunidades').hide()
      $('#solicitante').show()
      $('#progress').css('width', '20%')
      $('#progress').text('Solicitante')
      $('#instrucciones_solicitante').show()
      $('#instrucciones_solicitud').hide()
      $('#disciplina').hide()
      $('#beneficiarios').hide()
      $('#siguiente').show()
      clicks_form = clicks_form - 1
    else if clicks_form == 2
      event.preventDefault()
      $('#place').show()
      $('#implementos').show()
      $('#solicitante').hide()
      $('#comunidades').show()
      $('#progress').css('width', '40%')
      $('#progress').text('Solicitud')
      $('#instrucciones_solicitante').hide()
      $('#instrucciones_solicitud').show()
      $('#disciplina').show()
      $('#beneficiarios').hide()
      $('#sol_submit').hide()
      $('#siguiente').show()
      clicks_form = clicks_form - 1