class Tweet
  def initialize(user)
    @user = user
    @tweet = []
  end
  def text(str)
    @tweet << str
  end
  def mention(user)
    @tweet << "@" + user
  end

  def hashtag(str)
    @tweet << "#" + str
  end

  def link(str)
    @tweet << str
  end
  def submit_to_twitter
    tweet_text = @tweet.join(' ')
    puts "#{@user}: #{tweet_text}"
  end
end

def tweet_as(user)
  tweet = Tweet.new(user)
  yield tweet
  tweet.submit_to_twitter
end

tweet_as 'johndoe' do |tweet|
  tweet.mention 'codeschool'
  tweet.text 'I made a DSL!'
  tweet.hashtag 'hooray'
  tweet.hashtag 'ruby'
  tweet.link 'http://codeschool.com'
end

