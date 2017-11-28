class Timeline
  attr_accessor :tweets
  
  def print
    puts tweets.joing("\n")
  end
end


class AuthenticatedTimeline < Timeline
  def print
    authenticate!
    super
  end
  
  def authenticate!
    # do some authentication here
  end
end