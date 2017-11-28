class Timeline
  def initialize(tweets = [])
    @tweets = tweets
  end
  
  attr_reader :tweets
  alias_method :contents, :tweets
end