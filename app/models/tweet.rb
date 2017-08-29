class Tweet < ApplicationRecord


	validates :contant, length: { maximum: 124}
	def self.create_tweet(tweet)
		obj = Tweet.new
		obj.contant = tweet[:tweet]
		obj.save
	end
end
