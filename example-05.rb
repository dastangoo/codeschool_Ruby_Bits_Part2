class Tweet
  DELEGATED_METHODS = [:username, :avatar]
  def initialize(user)
    @user = user
  end
  
  def method_missing(method_name, *args)
    if DELEGATED_METHODS.include?(method_name)
      @user.send(method_name, *args)
    else
      super
    end
  end
end