# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tab = ->
        $('#extab').dataTable
	        bStateSave: false
	        bAutoWidth: false
	        aoColumns: [
	        	{sWidth: null},
	        	{sWidth: null, sClass: 'wordwrap'},
	        	{sWidth: null, sClass: 'wordwrap'},
	        	{sWidth: '17%', sClass: 'wordwrap'},
	        	{sWidth: '17%', sClass: 'wordwrap', bSortable: false},
	        	{sWidth: null},
	        	{sWidth: null},
	        	{sWidth: null, sClass: 'wordwrap'},
	        	{sWidth: null, bSortable: false},
	        	{sWidth: null, bSortable: false},
	        	{sWidth: null, bSortable: false},
	        	{sWidth: null, bSortable: false}
	        ]
	        sLengthMenu: '<select>'+
	        	'<option value="10">10</option>'+
	        	'</select> radku'

$(document).ready(tab)
$(document).on('page:load', tab)