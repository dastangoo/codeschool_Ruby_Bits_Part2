class Timeline
  alias_method :old_print, :print
  def print
    authenticate!
    old_print
  end
  def authenticate
    # do some authentication here
  end
end