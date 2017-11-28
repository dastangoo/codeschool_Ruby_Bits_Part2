class Tweet
  def draft
    @status = :draft
  end
  
  def posted
    @status = :posted
  end
  
  def deleted
    @status = :deleted
  end
end