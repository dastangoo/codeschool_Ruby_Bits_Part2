class Tweet
  attr_accessor :user, :status
  
  def initialize(&block)
    instance_eval(&block) if block_given?
  end
end

Tweet.new do |tweet|
  tweet.status = "I was set in the initialize block!"
  tweet.user = "John"
end

