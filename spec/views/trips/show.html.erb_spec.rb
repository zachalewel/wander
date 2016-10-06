require 'rails_helper'

RSpec.describe "trips/show", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :title => "Title",
      :description => "MyText",
      :latitude => 1.5,
      :longitude => 1.5,
      :trip_notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
  end
end
