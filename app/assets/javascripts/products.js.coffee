jQuery ->
  
  productImagePositionAdjustment = ->
    $imageWrappers = $(".product-image-wrapper")
    
    _.each $imageWrappers, (value, key, list) ->
      $img = $(value).find('img')
      
      wrapperHeight = $(value).height()
      
      $img.css("margin-top", wrapperHeight - $img.height())
      $img.css("margin-left", 0)
      
  
  $(window).load productImagePositionAdjustment
  
  
  
  preventLink = ->
    $("a[href='#']").click (event) ->
      event.preventDefault()
  preventLink()