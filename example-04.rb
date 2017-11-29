class Tweet 
  def initialize(status)
    puts "Inside an instance method: #{self}"
    @status = status
  end
end

Tweet.new("What is self, anyway?")