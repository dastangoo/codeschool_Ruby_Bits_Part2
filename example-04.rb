class Tweet
  def initialize(user)
    @user = user
  end
  
  def method_missing(method_name, *args)
    @user.send(method_name, *args)
  end
end