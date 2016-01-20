Template.feed.helpers
  links: ->
    Links.find()

Template.addLink.events 'submit #newLink': (e) ->
  e.preventDefault()

  link =
    url: $(e.target).find('[name=LinkURL]').val()
    title: $(e.target).find('[name=LinkTitle]').val()
    date_created: new Date()
  link._id = Links.insert(link)

  # CLEAR ADD LINK FORM
  $("#newLink").find('[name=LinkURL]').value=""
  $("#newLink").find('[name=LinkTitle]').value=""
  document.getElementById("newLink").reset();

  # CLOSE
  $("#AddLink").collapse("toggle");

  return
