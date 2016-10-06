require 'rails_helper'

RSpec.describe "trips/new", type: :view do
  before(:each) do
    assign(:trip, Trip.new(
      :title => "MyString",
      :description => "MyText",
      :latitude => 1.5,
      :longitude => 1.5,
      :trip_notes => "MyText"
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_title[name=?]", "trip[title]"

      assert_select "textarea#trip_description[name=?]", "trip[description]"

      assert_select "input#trip_latitude[name=?]", "trip[latitude]"

      assert_select "input#trip_longitude[name=?]", "trip[longitude]"

      assert_select "textarea#trip_trip_notes[name=?]", "trip[trip_notes]"
    end
  end
end
