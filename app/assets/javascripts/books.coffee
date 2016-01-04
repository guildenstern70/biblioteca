# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

exports = this

exports.send_message = ->
  console.log 'Sending message...'
  $('#contattateci').hide()
  $('#messaggio_inviato').show()
  $('#comment_form').submit()
  false







