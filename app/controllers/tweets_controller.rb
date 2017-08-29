class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all.order(created_at: :desc)
	end

	def create
		tweet = Tweet.create_tweet(tweet_params)

		if tweet.present?
			redirect_to root_path
		end
	end

	private

	def tweet_params
		params.permit(:tweet)
	end
end
