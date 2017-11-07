Jquery(document).on 'turbolinks:load', ->
	comments = 
	if comments.length > 0 
		App.global_char = App.cable.subscriptions.create {
			channel: "BlogsChannel"
			blog_id: comments.data('blog-id')
		}
		connected: ->
		disconnected ->
		received: (data) ->
			comments.append data['comment']
			