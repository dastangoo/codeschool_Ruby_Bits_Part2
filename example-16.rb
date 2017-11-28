def tweet_as(user)
  lambda { |tweet| puts "#{user}: #{tweet}"}
end

john_tweet = tweet_as("johndoe")
john_tweet.call("Mind blowing!")