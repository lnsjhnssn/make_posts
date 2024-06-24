require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  render_views 

  describe 'POST /users' do
    it 'creates a new user object' do
      post :create, params: { username: 'TestUsername' }
      expect(User.count).to eq(1)
    end
    
    it 'responds with a user object' do
      post :create, params: { username: 'TestUsername' }
      expected_response = {
        user: {
          username: 'TestUsername'
        }
      }
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end
