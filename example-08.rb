class Tweet 
  def post(success, error)
    if authenticate?(@user, @password)
      # submit the tweet
      success.call
    else
      error.call
    end
  end
end

tweet = Tweet.new('Ruby Bits!')
success = -> { puts "tweet" }
error = -> { raise 'Auth Error' }
tweet..post(success, error)
