Tweet = Struct.new(:user, :status) do
  def to_s
    "#{user}: #{status}"
  end
end