# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tab = ->
        $('#assertions').dataTable
	        bStateSave: true
	        bAutoWidth: false
	        aoColumns: [
	        	{sWidth: null, sClass: 'wordwrap'},
	        	{sWidth: null, sClass: 'wordwrap', bSortable: false},
	        	{sWidth: '4%'},
	        	{sWidth: '3%'},
	        	{sWidth: '9%', sClass: 'wordwrap'},
	        	{sWidth: '3%', bSortable: false},
	        	{sWidth: '4%', bSortable: false},
	        	{sWidth: '3%', bSortable: false},
	        	{sWidth: '4%', bSortable: false}
	        ]
	        sLengthMenu: '<select>'+
	        	'<option value="10">10</option>'+
	        	'</select> radku'

$(document).ready(tab)
$(document).on('page:load', tab)

