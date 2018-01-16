require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'User API' do
    let(:auth_header) { { 'Authorization' => generate_token(user) } }

    describe 'POST /api/v1/users/create' do
      before { post create_api_v1_users_path, params }
      context 'all the needed parameters are sent' do
        let(:params) do
          {
            'user' => {
              'email' => 'test@email.com',
              'password' => 'password'
            }
          }
        end
        it 'creates a user with email and password' do
          expect(response.status).to eq 200
        end
      end
    end
  end

end
