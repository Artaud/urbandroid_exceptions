# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tab = ->
        $('#extab').dataTable
	        bStateSave: false
	        bAutoWidth: false
	        sScrollX: '100%'
	        aoColumns: [
	        	{sWidth: null},
	        	{sWidth: null},
	        	{sWidth: null},
	        	{sWidth: '20%', sClass: 'wordwrap'},
	        	{sWidth: '20%'},
	        	{sWidth: null},
	        	{sWidth: null},
	        	{sWidth: null},
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