class User < Sequel::Model
  # many_to_many(:viewers)
  # one_to_one(:recording)

  attr_reader :gender

  def male?
    self[:gender] == "male"
  end

  def female?
    self[:gender] == "female"
  end

    # binding.pry
end
