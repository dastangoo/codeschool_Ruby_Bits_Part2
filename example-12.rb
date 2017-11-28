class Timeline
  attr_accessor :tweets
  
  def each(&block)
    tweets.each(&block)
  end
end