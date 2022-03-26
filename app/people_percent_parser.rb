class PeoplePercentParser < BaseParser
  def self.parse_line(line)
    people_data = line.split("%")
    first_name = people_data[0].strip
    city = people_data[1].strip
    dob = parse_dob(people_data[2], "%Y-%m-%d")
    People.new(first_name, city, dob)
  end
end
