class Tweet 
  def post(success)
    if authenticate?(@user, @password)
      # submit the tweet
      success.call
    else
      rais 'Auth Error'
    end
  end
end

tweet = Tweet.new('Ruby Bits!')
success = -> { puts "tweet" }
tweet.post(success)