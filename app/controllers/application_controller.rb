class ApplicationController < ActionController::Base
	protect_from_forgery
	
=begin
	# Basic認証
	if Rails.env == 'production'
		USERNAME = "hoge"
		PASSWORD = "huga"
		before_filter :authenticate
		def authenticate
			authenticate_or_request_with_http_basic do |name, password|
				(@name = name) == USERNAME && password == PASSWORD
			end
		end
	end
=end

	# どのページでもユーザを認識出来るようにする
	helper_method :current_user
	private
	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id])
		end
	end
end
