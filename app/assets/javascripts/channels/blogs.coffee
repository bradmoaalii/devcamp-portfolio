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
		send)comment: (comment, blog_id)
			@perform 'send_comment', comment: comment, blog:id blog_id
	$('#new_comment').submit (e) ->
		$this = $(this)
		textarea = $this.find('$('#comment_content')
		if $.trim(textarea.val()).length > 1
			App.global_chat.send_comment textarea.val(),
			comments.data('blog-id')
			textarea.val('')
		e.preventDefault()
		return false