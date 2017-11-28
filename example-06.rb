class Tweet
  def post
    if authenticate?(@user, @password)
      # submit the tweet
      yield
    else 
      raise 'Auth Error'
    end
  end
end

tweet = Tweet.new('Ruby Bits!')
tweet.post { puts "Sent!" }