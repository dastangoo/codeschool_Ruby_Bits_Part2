Tweet = Struct.new(:user, :status)


tweet = Tweet.new('John', 'Compiling')
puts tweet.user
puts tweet.status 