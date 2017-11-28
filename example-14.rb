class Timeline
  attr_accessor :tweets
  
  def print
    # block_given? is a built-in ruby method
    if block_given?
      tweets.each { |tweet| puts yield tweet }
    else
      puts tweets.join(", ")
    end
  end
end
timeline = Timeline.new
timeline.tweets = ["One", "Two"]

# Call print without block
timeline.print # => One, Two

# Call print with block
timeline.print { |tweet|
  "tweet: #{tweet}"
}