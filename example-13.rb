tweets.map { |tweet| tweet.user }

tweets.map(&:user)

# This cause error
tweets.map(&:user.name)