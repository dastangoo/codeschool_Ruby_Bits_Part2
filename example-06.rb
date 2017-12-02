class Tweet
  def initialize(user)
    @user = user
    @tweet = []
    @annotations = {}
  end
  
  def submit_to_twitter
    tweet_text = @tweet.join(' ')
    if tweet_text.length <= 140
      puts "#{@user}: #{tweet_text}"
      puts @annotations.inspect unless @annotations.empty?
    else 
      raise "Your tweet is too long."
    end
  end
  
  def text(str)
    @tweet << str
    self
  end
  
  def mention(*users)
    users.each do |user|
      @tweet << "@" + user
    end
    self
  end

  def hashtag(str)
    @tweet << "#" + str
    self
  end

  def link(str)
    @tweet << str
    self
  end
    
  def method_missing(method, *args)
    @annotations[method] = args.join(", ")
  end
end


def tweet_as(user, text = nil, &block)
  tweet = Tweet.new(user)
  tweet.text(text) if text
  tweet.instance_eval(&block) if block_given?
  tweet.submit_to_twitter
end

tweet_as 'johndoe' do
  text 'I made a DSL! jklsjflksjfljfkldsjflsjflsjlkfjslfjklsjflsjfkjslfjlsjflslfjlslfslfjlsjlkfsdjlfjsdkljflkdsjfldjslfjdslfjlksjflkdjlfjlsjflkdsjflsjklfjdsljflksjfklsdjlfjdlksjfldsjfsjlfjldsjfllkfs'
  hashtag 'lol'
  hashtag 'twitter'
end