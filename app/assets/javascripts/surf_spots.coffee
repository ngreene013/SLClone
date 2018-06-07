# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#surf_spot_id").change ->
    value = $('#surf_spot_id').val();
    #console.log('value is: ' + value);
    #console.log($("#surf_spot_id"));
#window.location = this.getAttribute("data-spoturl");



#if(this.selectedIndex != 0)
#  self.location = this.options[this.selectedIndex].value


#onclick(function() {});

# $('.refresh-forecast').click ->
#   alert 'hi'

#$('.dynamic').load('/controller_name/action_name');}, 3000);});