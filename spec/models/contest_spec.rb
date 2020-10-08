require 'rails_helper'

RSpec.describe Contest, type: :model do
  let(:slogan_one) { Contest.create(slogan: 'valid test slogan') }

  context 'validations tests' do
    it 'ensures the first_name is present' do
      contest = Contest.new(first_name: 'John')
      expect(contest.valid?).to eq(false)
    end

    it 'ensures the last_name is present' do
      contest = Contest.new(last_name: 'Doe')
      expect(contest.valid?).to eq(false)
    end

    it 'ensures the email is present' do
      contest = Contest.new(email: 'john.doe@gmail.com')
      expect(contest.valid?).to eq(false)
    end

    it 'ensures the slogan is present' do
      contest = Contest.new(slogan: 'Testing slogan')
      expect(contest.valid?).to eq(false)
    end

    it 'is invalid if length is less than 10 characters' do
      slogan_one.slogan = 'te'
      slogan_one.valid?
      expect(slogan_one.errors[:slogan]).to include('is too short (minimum is 10 characters)')
    end

    it 'is invalid if length is more than 50 characters' do
      slogan_one.slogan = 'a' * 52
      slogan_one.valid?
      expect(slogan_one.errors[:slogan]).to include('is too long (maximum is 50 characters)')
    end
  end
end
