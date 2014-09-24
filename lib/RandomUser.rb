module RandomUser

  def fetch
    HTTParty.get("http://api.randomuser.me/")
  end

end
