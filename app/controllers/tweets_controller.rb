class TweetsController < ApplicationController

	def index
		
		if current_user.present?
			@tweets = Tweet.all.order(created_at: :desc)
		else
			redirect_to root_path
		end
	end

	def create
		user_id = current_user.id
		tweet = Tweet.create_tweet(tweet_params,user_id)

		if tweet.present?
			redirect_to tweets_path
		end
	end

	private

	def tweet_params
		params.permit(:tweet,:user_id)
	end
end
