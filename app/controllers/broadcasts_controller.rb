class BroadcastsController < ApplicationController
	protect_from_forgery :except => [:index]
	def index
		headers = {"Content-Type": "application/json",
			"Authorization": "key=AAAADR4gD7A:APA91bEJTTuS0xMnITUBFcdkvFH9omogkaoWJbfJbeo84zl4JwWUx_-e23ctq2MRSpKTRHekT7iVfeYv-pbPmRDPRfYY2eK5Ov_78Ol-gcQZIhGQelo01p_uCUgqeOge6VpoZr4X9wY8"}
		url = "https://fcm.googleapis.com/fcm/send"
		#User.find_each do |user|
			puts 'inside users'
			payload = {
				"notification": {
					"title": "We have a message for you!",
					"body": "Answer please, we are cool!",
					"icon": "/app_icon.png",
					"click_action": "https://oursecureurl.domain.com/chats"
					},
				"to": "edvrfBPsLBA:APA91bGhR8lpIlYJdPr3sBMLSTNB3gFjz2WfNSOgvX4i64RG5wizxO3ad1BPKMK8GuaF4fK48Rh0jUObeeoHq2IH5Yf2BSCAxOqSQpYrCLVUj4Gtk3wCwypY7KnLEF8C7ftYMauHFLcb"
			}
			RestClient.post(url, payload, headers)
     	#end
	end
end