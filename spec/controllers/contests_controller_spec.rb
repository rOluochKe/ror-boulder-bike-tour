require 'rails_helper'

RSpec.describe '/contests', type: :request do
  let(:valid_attributes) do
    {
      'id' => '1',
      'first_name' => 'John',
      'last_name' => 'Doe',
      'email' => 'john.doe@gmail.com',
      'slogan' => 'Testing contest slogan by users'
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      contest = Contest.new(valid_attributes)
      contest.save
      get contests_url
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_contest_url
      expect(response).to be_successful
    end
  end
end
