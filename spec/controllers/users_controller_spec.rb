require 'rails_helper'
RSpec.describe UsersController do

  #let!(:user) { User.create(name: 'Nikhil', email: 'nvp@g.com',password: 'qwertyu', gender: 'Male') }

  it 'Get Index Page' do
    get :index
    expect(response.status).to eq(200)
    assert_template 'users/index'
  end

  it 'Index Page with JSON Response' do
    get :index, format: :json
    expect(response.status).to eq(200)
    expect(response.content_type).to eq('application/json')
  end

  it 'Create User JSON Response' do
    post :create, params: { user: { name: 'Nikhil', email: 'nvp@g.com',password: 'qwertyuiop', gender: 'Male' } }
    binding.pry
    expect(response.status).to eq(201)
    expect(response.content_type).to eq('application/json')
  end
end
