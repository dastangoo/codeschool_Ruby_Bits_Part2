class Timeline
  def initialize(tweets)
    @tweets = tweets
  end
  
  def contents
    @tweets
  end

  def show_tweet(index)
    puts @tweets[index]
  end
end

tweets = ['Compiling!', 'Bundling...']
timeline = Timeline.new(tweets)
current_method = timeline.method(:contents)
current_method.call
show_method = timeline.method(:show_tweet)
show_method.call(0)
(0..1).each(&show_method)