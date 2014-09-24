module RandomUser

  def self.fetch
    HTTParty.get("http://api.randomuser.me/")
  end

end
