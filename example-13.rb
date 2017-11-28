class Timeline
  def initialize(tweets)
    @tweets = tweets
  end
  
  def contents
    @tweets
  end
  
  private
  def direct_messages
    
  end
end

tweets = ['Compiling!', 'Bundling...']
timeline = Timeline.new(tweets)

# puts timeline.contents
# puts timeline.send(:contents)
# puts timeline.send("contents")
# puts timeline.send(:direct_messages)
# puts timeline.public_send(:direct_messages)
puts timeline.public_send(:contents)
