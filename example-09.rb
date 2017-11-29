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
  
  # def respond_to?(method_name)
  #   method_name =~ /^hash_\w+/ || super 
  # end
  def respond_to_missing?(method_name)
    method_name =~ /^hash_\w+/ || super 
  end
end


tweet = Tweet.new("test")
# puts tweet.respond_to?(:to_s)
# tweet.hash_ruby
# puts tweet.respond_to?(:hash_ruby)
tweet.method(:hash_ruby)