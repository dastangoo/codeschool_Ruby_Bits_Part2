class Tweet
  attr_accessor :user, :status
  
  def initialize
    yield self if block_given?
  end
end

Tweet.new do |tweet|
  tweet.status = "I was set in the initialize block!"
  puts tweet.status
  tweet.user = "John"
  puts tweet.user
end

