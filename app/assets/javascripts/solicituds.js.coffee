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
  max_fields_imps  = 1000                                # Maximum input boxes allowed
  wrapper          = $(".input_fields_wrap")             # Fields wrapper
  add_button       = $(".add_field_button")              # Add button ID
  wrapper_2        = $(".input_fields_wrap_second")      # Fields wrapper
  add_button_2     = $(".add_field_button_second")       # Add button ID
  x                = 1                                   # Initlal text box count
  y                = 1                                   # Initlal text box count

  $(add_button).click (event) ->
    event.preventDefault()
    if x < max_fields_coms
      x++

      $(wrapper).append('<div><input class="text optional" id="solicitud_comunidades" multiple="multiple" name="solicitud[comunidades][]"><a href="#" class="remove_field">Remove</a></div>') # add input box


  $(wrapper).on 'click', ".remove_field", (e) ->
      e.preventDefault(); $(this).parent('div').remove(); x--

  $(add_button_2).click (event) ->
    event.preventDefault()
    if y < max_fields_imps
      y++
      $(wrapper_2).append('<div><select class="select optional" id="solicitud_implementos" name="solicitud[implementos]"><option value=""></option>
      <option value="20">Medalla de bronce</option>
      <option value="19">Medalla de oro</option>
      <option value="18">Medalla de plata</option>
      <option value="26">Pelota de basquetbol</option>
      <option value="24">Pelota de fútbol No. 4</option>
      <option value="25">Pelota de fútbol No. 5</option>
      <option value="27">Pelota de voleibol</option>
      <option value="23">Trofeo de bronce</option>
      <option value="22">Trofeo de oro</option>
      <option value="21">Trofeo de plata</option>
      <option value="8">Uniforme de basquetbol femenino</option>
      <option value="7">Uniforme de basquetbol masculino</option>
      <option value="5">Uniforme de fútbol femenino</option>
      <option value="4">Uniforme de fútbol masculino</option>
      <option value="6">Uniforme de fútbol niño</option>
      <option value="12">Uniforme de multidisciplinario femenino</option>
      <option value="11">Uniforme de multidisciplinario masculino</option>
      <option value="13">Uniforme de multidisciplinario niño</option>
      <option value="2">Uniforme de papi fútbol femenino</option>
      <option value="3">Uniforme de papi fútbol masculino</option>
      <option value="1">Uniforme de papi fútbol niño</option>
      <option value="10">Uniforme de voleibol femenino</option>
      <option value="9">Uniforme de voleibol masculino</option>
      <option value="14">Zapatos de fútbol</option>
      <option value="15">Zapatos de papi fútbol</option>
      <option value="16">Zapatos tenis deportivo</option>
      <option value="17">Zapatos tenis para correr</option></select><a href="#" class="remove_field">Remove</a></div>') # add input box

  $(wrapper_2).on 'click', ".remove_field", (e) ->
    e.preventDefault(); $(this).parent('div').remove(); y--

