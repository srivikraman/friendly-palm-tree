class PeopleController
  def initialize(params)
    @params = params
    @people = []
  end

  def normalize
    @people += PeopleDollarParser.parse(params[:dollar_format])
    @people += PeoplePercentParser.parse(params[:percent_format])

    @people = @people.sort_by { |people| people.first_name }

    @people.map { |people| people.data }
  end

  private

  attr_reader :params
end
