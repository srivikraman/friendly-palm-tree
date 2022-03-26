class BaseParser
  def self.parse(file_data)
    people = []
    lines = file_data.split("\n")
    count = lines.length - 1
    for line in lines[1..count]
      people << parse_line(line)
    end
    people
  end

  def self.parse_dob(dob, format)
    DateTime.strptime(dob.strip, format)
  end

  def self.parse_line(line)
    raise "Not implemented"
  end
end
