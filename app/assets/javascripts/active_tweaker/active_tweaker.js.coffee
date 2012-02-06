jQuery -> new ActiveTweaker

class ActiveTweaker

  constructor: ->
    $('.datepicker').datepicker dateFormat: 'yy-mm-dd'
    $('.clear_filters_btn').click ->
      window.location.search = ''
      false
    if $('.sort-handle').length
      $('table.index_table tbody').sortable
        axis: 'y'
        cursor: 'move'
        handle: '.sort-handle'
        helper: @rowHelper
        items: 'tr'
        update: @update

  rowHelper: (e, ui) =>
    # http://www.foliotek.com/devblog/make-table-rows-sortable-using-jquery-ui-sortable/
    ui.children().each -> $(this).width($(this).width())
    ui

  update: (e, ui) =>
    $.post "/admin/#{location.href}/sort", $('table.index_table tbody').sortable('serialize')
    $('table.index_table tbody tr').each (i, e) ->
      $(e).removeClass('odd even').addClass(if i % 2 then 'even' else 'odd')
