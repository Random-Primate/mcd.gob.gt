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
  ctr              = 0
  implementos_add  = $('.agregar_imp')

  ###
  Adding Solicitante's Dept and Muni
  ###
  $('#solicitud_municipio_id').parent().hide()
  municipios = $('#solicitud_municipio_id').html()
  $('#solicitud_departamento_id').change ->
    departamento = $('#solicitud_departamento_id :selected').text()
    departamento_protegido = departamento.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(municipios).filter("optgroup[label='#{departamento_protegido}']").html()
    if options
      $('#solicitud_municipio_id').html(options)
      $('#solicitud_municipio_id').parent().show()
    else
      $('#solicitud_municipio_id').empty()
      $('#solicitud_municipio_id').parent().hide()

  ###
  Adding Implementos
  ###
  $(implementos_add).click (event) ->
    event.preventDefault()
    if x < max_fields_coms
      x++
      $(wrapper).append('<div><input class="text optional" id="solicitud_comunidades" multiple="multiple" name="solicitud[comunidades][]"><a href="#" class="remove_field btn btn-default">Eliminar</a></div>') # add input box

  $(wrapper).on 'click', ".remove_field", (e) ->
    e.preventDefault(); $(this).parent('div').remove(); x--

  ###
  Adding Comunidades
  ###
  $(add_button).click (event) ->
    event.preventDefault()
    if x < max_fields_coms
      x++
      $(wrapper).append('<div><input class="text optional" id="solicitud_comunidades" multiple="multiple" name="solicitud[comunidades][]"><a href="#" class="remove_field btn btn-default">Eliminar</a></div>') # add input box

  $(wrapper).on 'click', ".remove_field", (e) ->
      e.preventDefault(); $(this).parent('div').remove(); x--

  ###
  Adding Cocoon Callbacks
  ###

  # Get Today
  today = () ->
    d = new Date($.now())
    return d

  # Array to ISO
  iso_format = (d, m, y) ->
    iso = ''
    day = String(d)
    month = String(m)
    year = String(y)
    if(day.length == 1)
      day = '0' + day
    month = "0" + month  if month.length is 1
    iso = year + '-' + month + '-' + day
    iso_date = new Date(iso);
    return iso_date

  # Before adding dynamic fields
  $("#bene").on "cocoon:after-insert", (e, insertedItem) ->
    # Add custom class to each new item
    insertedItem.addClass('red-' + ctr)
    # Get classes
    cls = insertedItem.attr('class')
    cl_nf = cls.substr(0, 13)
    cl_lgth = cls.length
    cl_r = cls.substr(14, cl_lgth)
    class_fecha = '.' + cl_nf + '.' + cl_r + ' .panel.panel-default .panel-body .well .fecha'
    class_partida = '.' + cl_nf + '.' + cl_r + ' .panel.panel-default .panel-body .well .partida'
    #class_dept = '.control-group.select.required.solicitud_beneficiarios_departamento:nth-child(' + (ctr + 1) + ')'
    #class_muni = '.control-group.grouped_select.required.solicitud_beneficiarios_municipio:nth-child(' + (ctr + 2) + ')'
    select_parent = class_fecha + ' select'
    select_child = class_fecha + ' select option:selected'
    # Muni ID
    #muni_id = $(class_muni + ' .controls select').attr('id')
    # Dept ID
    #dept_id = $(class_dept + ' .controls select').attr('id')

    # Add custom class to each new item's hidden element
    $(class_partida).addClass('item-' + ctr)

    # Get new item class
    itm_cls = '.partida.item-' + ctr

    # Hide Element
    $(itm_cls).hide()

    ctr += 1 # Remember to substract

    # Hide or Show input fields depending on age.
    $(select_parent).change(->
      dt_v = []
      i = 0
      $(select_child).each ->
        dt_v[i] = $(this).val()
        i += 1
      iso = iso_format(dt_v[0], dt_v[1], dt_v[2])
      t = today().getFullYear()
      c = iso.getFullYear()
      # Menor
      if (t - c) < 18
        $(itm_cls).show()
      else
        $(itm_cls).hide()
    )

    # Scope Municipio depending on Departamento
    ###
    muni = '#' + muni_id
    dept = '#' + dept_id
    console.log(muni)
    console.log(dept)
    $(muni).parent().hide()
    ben_municipios = $(muni).html()
    $(dept).change ->
      ben_departamento = $(dept + ' :selected').text()
      ben_departamento_protegido = ben_departamento.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
      ben_options = $(ben_municipios).filter("optgroup[label='#{ben_departamento_protegido}']").html()
      if ben_options
        $(muni).html(ben_options)
        $(muni).parent().show()
      else
        $(muni).empty()
        $(muni).parent().hide()
    ###
  # After Removing dynamic fields
  $("#bene").on "cocoon:after-remove", (e, insertedItem) ->
    ctr -= 1

  ###
  Form Behaviour
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