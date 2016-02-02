require 'rails_helper'

RSpec.describe "PlacesController", :type => :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(:get => '/').to route_to('places#index')
    end
  end
end
