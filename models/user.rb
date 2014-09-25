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
    (Time.new.year - year_conversion.year) >= 18
  end

  def boomer?
    year_conversion.year =< 1946 &&
      year_conversion.year >= 1964
  end

  def teen?
    (Time.new.year - year_conversion.year) >= 13 &&
      (Time.new.year - year_conversion.year) =< 18
  end

  def child?
    (Time.new.year - year_conversion.year) == 11 ||
      (Time.new.year - year_conversion.year) == 12
  end

  def toddler?
    (Time.new.year - year_conversion.year) >= 4 &&
      (Time.new.year - year_conversion.year) <= 10
  end

  def baby?
    (Time.new.year - year_conversion.year) <= 3
  end
    binding.pry

end
