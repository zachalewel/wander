require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :title => "Title",
        :description => "MyText",
        :latitude => 1.5,
        :longitude => 1.5,
        :trip_notes => "MyText"
      ),
      Trip.create!(
        :title => "Title",
        :description => "MyText",
        :latitude => 1.5,
        :longitude => 1.5,
        :trip_notes => "MyText"
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
