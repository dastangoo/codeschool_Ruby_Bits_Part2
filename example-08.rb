class Tweet
  def initialize(text)
    @text = text
  end
  
  def to_s
    @text
  end
  
  def method_missing(method_name, *args)
    match = method_name.to_s.match(/^hash_(\w+)/)
  end
end


tweet = Tweet.new("test")
puts tweet.respond_to?(:to_s)
tweet.hash_ruby
puts tweet.respond_to?(:hash_ruby)