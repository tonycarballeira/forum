class NotificationMailer < ApplicationMailer
	default from: "notifications@tonyforum.com"

	def forum_post_notification(user, forum_post)
		@user = user
		@forum_post = forum_post
	end
end
