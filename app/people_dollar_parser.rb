class PeopleDollarParser < BaseParser
  MAP_CITY_SYMBOL_TO_NAME = {"LA" => "Los Angeles", "NYC" => "New York City"}.freeze
  def self.parse_line(line)
    people_data = line.split("$")
    first_name = people_data[3].strip
    city = MAP_CITY_SYMBOL_TO_NAME[people_data[0].strip]
    dob = parse_dob(people_data[1], "%d-%m-%Y")
    People.new(first_name, city, dob)
  end
end
