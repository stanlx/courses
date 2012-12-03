# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $("table").dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bStateSave: true
    iDisplayLength: 20
    oLanguage:
      sLengthMenu: 'Display <select>'+
        '<option value="20">20</option>'+
        '<option value="40">40</option>'+
        '<option value="100">100</option>'+
        '<option value="-1">All</option>'+
        '</select> records'

    aoColumnDefs: [
      bSortable: false
      aTargets: [0]
    ]
    aaSorting: [[1, "asc"]]

