require 'spec_helper'

RSpec.describe 'PeopleDollarParser' do
  describe 'PeopleDollarParser unit test case' do
    it 'parse person data' do
      people = PeopleDollarParser.parse(File.read "spec/fixtures/people_by_dollar.txt")
      expect(people[0].data).to eq("Rhiannon, Los Angeles, 4/30/1974")
      expect(people[1].data).to eq("Rigoberto, New York City, 1/5/1962")
    end
  end
end
