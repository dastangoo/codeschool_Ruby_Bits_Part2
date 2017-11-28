class Timeline
  attr_accessor :tweets
  
  def print
    puts tweets.join("\n")
  end
end