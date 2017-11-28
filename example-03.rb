class Tweet
  attr_accessor :user, :status
  def initialize(user, status)
    @user, @status = user, status
  end
  
  def to_s
    "#{user}: #{status}"
  end
end
