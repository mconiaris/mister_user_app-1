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

  def mr?
    self[:title_name] == "Mr"
  end

  def ms?
    self[:title_name] == "Ms"
  end

  def miss?
    self[:title_name] == "Miss"
  end

  def mrs?
    self[:title_name] == "Mrs"
  end

  # Converts epoch number to String
  def year_conversion
    DateTime.strptime(self[:dob].to_s,'%s')
  end

  def adult?
    (Time.new.year - year_conversion.year) > 18
  end

  def boomer?

  end

  def teen?

  end

  def child?

  end

  def toddler?

  end

  def baby?

  end
    binding.pry

end
