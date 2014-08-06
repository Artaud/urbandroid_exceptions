# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tab = ->
        $('#assertions').dataTable
	        bStateSave: true
	        bAutoWidth: false
	        aoColumns: [
	        	{sWidth: '20%', sClass: 'wordwrap'},
	        	{sWidth: '20%', sClass: 'wordwrap'},
	        	{sWidth: '4%'},
	        	{sWidth: '2%'},
	        	{sWidth: null, sClass: 'wordwrap'},
	        	{sWidth: null},
	        	{sWidth: null},
	        	{sWidth: null},
	        	{sWidth: null}
	        ]
	        sLengthMenu: '<select>'+
	        	'<option value="10">10</option>'+
	        	'</select> radku'

$(document).ready(tab)
$(document).on('page:load', tab)

