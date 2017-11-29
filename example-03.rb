class Tweet
  def Tweet.find(keyword)
    puts "Inside a class method: #{self}"
  end
end 

Tweet.find("rubybits")