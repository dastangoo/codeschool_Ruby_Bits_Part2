class Tweet
  def initialize(text)
    @text = text
  end
  
  def to_s
    @text
  end
  
  def method_missing(method_name, *args)
    match = method_name.to_s.match(/^hash_(\w+)/)
    if match
      self.class.class_eval do
       define_method(method_name) do
         @text << " #" + match[1]
       end
     end(method_name)
    end
    else
      super
    end
  end
  
end


tweet = Tweet.new("Sponsor By")
tweet.hash_codeschool
tweet.hash_codeschool

