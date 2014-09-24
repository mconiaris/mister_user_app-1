class User < Sequel::Model
  # many_to_many(:viewers)
  # one_to_one(:recording)

  def male?
    binding.pry
    user[:gender] == male
  end

end
