# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
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

  max_fields_coms  = 1000                                # Maximum input boxes allowed
  wrapper          = $(".input_fields_wrap")             # Fields wrapper
  add_button       = $(".add_field_button")              # Add button ID
  x                = 1                                   # Initlal text box count

  $(add_button).click (event) ->
    event.preventDefault()
    if x < max_fields_coms
      x++

      $(wrapper).append('<div><input class="text optional" id="solicitud_comunidades" multiple="multiple" name="solicitud[comunidades][]"><a href="#" class="remove_field">Remove</a></div>') # add input box

  $(wrapper).on 'click', ".remove_field", (e) ->
      e.preventDefault(); $(this).parent('div').remove(); x--
