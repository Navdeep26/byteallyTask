class Tweet < ApplicationRecord


	validates :contant, length: { maximum: 124}
	def self.create_tweet(tweet,id)
		obj = Tweet.new
		obj.contant = tweet[:tweet]
		obj.user_id = id
		obj.save
	end
end
