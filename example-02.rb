class Tweet
  def method_missing(method_name, *args)
    logger.warn "You tried to call #{method_name} with these arguments: #{args}"
    super
  end
end

Tweet.new.submit(1, "Here's a tweet.")