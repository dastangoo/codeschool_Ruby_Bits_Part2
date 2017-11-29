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


tweet = Tweet.new("Sponsered by")
tweet.hash_by
tweet.hash_metaprogramming
puts tweet