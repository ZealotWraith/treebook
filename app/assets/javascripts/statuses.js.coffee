# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#jquery can be replaced by $
#jquery starts after the page loaded
$ -> 
	$('.status').hover (event) ->
		console.log("Hover triggered")
		$(this).toggleClass("hover")
		