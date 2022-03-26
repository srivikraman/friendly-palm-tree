class People
  attr_reader :first_name
  def initialize(first_name, city, dob)
    raise "Invalid date format" if dob.class.to_s != "DateTime"
    @first_name = first_name
    @city = city
    @dob = dob
  end

  def data
    @first_name + ", " + @city + ", " + @dob.strftime("%-m/%-d/%Y")
  end
end
