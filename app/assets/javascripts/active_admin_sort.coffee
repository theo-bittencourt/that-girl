jQuery ->

  sendSortRequestOfModel = (model_name) ->
    formData = $('#' + model_name + ' tbody').sortable('serialize')
    formData += "&" + $('meta[name=csrf-param]').attr("content") + "=" + encodeURIComponent($('meta[name=csrf-token]').attr("content"))
    $.ajax
      type: 'post'
      data: formData
      dataType: 'script'
      url: '/admin/' + model_name + '/sort'
  
  
  if $('body.admin_products.index').length
    $( "table#products tbody").disableSelection()
    $( "table#products tbody").sortable
      axis: 'y'
      cursor: 'move'
      opacity: 0.6
      update: (event, ui) ->
        sendSortRequestOfModel("products")
  
  if $('body.admin_categories.index').length
    $( "table#categories tbody").disableSelection()
    $( "table#categories tbody").sortable
      axis: 'y'
      cursor: 'move'
      opacity: 0.6
      update: (event, ui) ->
        sendSortRequestOfModel("categories")
