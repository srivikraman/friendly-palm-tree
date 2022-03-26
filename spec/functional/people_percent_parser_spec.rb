require 'spec_helper'

RSpec.describe 'PeoplePercentParser' do
  describe 'PeoplePercentParser unit test case' do
    it 'parse person data' do
      people = PeoplePercentParser.parse(File.read "spec/fixtures/people_by_percent.txt")
      expect(people[0].data).to eq("Mckayla, Atlanta, 5/29/1986")
      expect(people[1].data).to eq("Elliot, New York City, 5/4/1947")
    end
  end
end
