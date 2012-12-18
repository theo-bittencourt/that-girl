jQuery ->
  
  productImagePositionAdjustment = ->
    $imageWrappers = $(".product-image-wrapper")
    
    _.each $imageWrappers, (value, key, list) ->
      $img = $(value).find('img')
      
      wrapperHeight = $(value).height()
      
      $img.css("margin-top", wrapperHeight - $img.height())
      $img.css("margin-left", 0)
      
  
  $(window).load productImagePositionAdjustment
  
  
  wrapPricePrepositions = ->
    $prices = $(".product .product-alternative-price span")
    _.each $prices, (value, key, list) ->
      text = $(value).text()
      $(value).html text.replace(/de/i, "<span class='preposition'>de</span>")
  
  wrapPricePrepositions()

  
  preventLink = ->
    $("a[href='#']").click (event) ->
      event.preventDefault()
  preventLink()