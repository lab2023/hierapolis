#= require bootstrap
#= require_tree

$(document).ready ->

  # Enable Tips & Popovers
  $('[data-toggle=tooltip]').tooltip()
  $('[data-toggle=popover]').popover()

  # Eable Dropdowns
  $('.dropdown-toggle').dropdown()
  $('.dropdown.hover').hover (->
    $(this).find('.dropdown-menu').stop(true, true).fadeIn()
  ), ->
    $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut()


  $('#toggle').click ->
    $('#dock .launcher a').toggle()
    $('#dock li.launcher').each ->
      $(this).find('.dropdown-menu').css 'top', $(this).position().top + 33

  # Enable toolbar tooltips
  $('[data-toggle=toolbar-tooltip]').tooltip
    placement: 'bottom'

  # Enable knob inputs
  $('.knob').knob()
