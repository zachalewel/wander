require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_secure_password }

  describe User do
    before(:each)do
      User.create(username: "zachhh", email: "z@z.c",
       password: "fast",
       password_confirmation: "fast")
    end
    it { should validate_uniqueness_of(:username) }
  end
end
