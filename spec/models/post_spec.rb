require 'rails_helper'

RSpec.describe Post, type: :model do

  describe 'post validity' do
    before do
      @user = User.create(email:'fake@fake.com', password:'123456')
      @surf_spot = SurfSpot.create()
      @post = @user.posts.new(content: "Lorem ipsum", user_id:@user.id, surf_spot_id:@surf_spot.id)
    end

    it 'should be valid' do
      expect(@post).to be_valid
    end


  end
end
