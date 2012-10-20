jQuery ->
  $("#new_newsletter_user[data-remote='true']").live 'ajax:complete', (event, xhr, status) ->
    if $(xhr.responseText).find("#new_newsletter_user").size() > 0
      new_content = $(xhr.responseText).find("#new_newsletter_user")
      $(this).replaceWith new_content
    else
      new_content = $(xhr.responseText).find("p#notice")
      $(this).replaceWith new_content
    
    
