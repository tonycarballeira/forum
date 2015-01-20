class ForumPost < ActiveRecord::Base
	belongs_to :forum_thread
	belongs_to :user

	validates :body, presence: true

	def send_notifications!
		users = forum_thread.users.uniq - [user]
	end
end
