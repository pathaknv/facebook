require 'rails_helper'
RSpec.describe PostsController do
  context do
      it 'Get Index Page' do
        get :index
        expect(response.status).to eq(200)
        assert_template 'posts/index'
      end
  end
end
