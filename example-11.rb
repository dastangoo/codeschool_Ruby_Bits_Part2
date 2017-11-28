class Timeline
  attr_accessor :tweets
  def each
    tweets.each { |tweet| yield tweet }
  end
end

timeline = Timeline.new(tweets)
timeline.each do |tweet|
  puts tweet
end