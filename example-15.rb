class Tweet
  def initialize
    yield self if block_given?
  end
end

Tweet.new do |tweet|
  tweet.status = "Set in intialize"
  tweet.created_at = Time.now
end