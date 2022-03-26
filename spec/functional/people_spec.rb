require 'spec_helper'

RSpec.describe 'People' do
  describe 'People unit test case' do
    it 'initialize people with invalid date' do
      expect{People.new("sample", "city", "sample")}.to raise_error
    end

    it 'initialize people with valid data' do
      people = People.new("sample", "city", DateTime.strptime("2022-02-01", "%Y-%m-%d"))
      expect(people.data).to eq("sample, city, 2/1/2022")
    end
  end
end
