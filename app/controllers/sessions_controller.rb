class SessionsController < ApplicationController
	# 認証後route.rbの設定によってここに飛ばされる
    def callback
		auth = request.env["omniauth.auth"]
		user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
		session[:user_id] = user.id
		redirect_to root_url, :notice => "login !"
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "logout !"
	end
end
