module ApplicationHelper
	def user_signed_in?
		current_user.present?
	end

	def upvote_method
		
	end

end
