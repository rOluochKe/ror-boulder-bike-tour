require 'rails_helper'

RSpec.describe Contest, type: :model do
  it 'has first name' do
    contest = Contest.new(
      first_name: '',
      last_name: 'Doe',
      email: 'john.doe@gmail.com',
      slogan: 'Testing contest slogan by users'
    )
    expect(contest).to_not be_valid

    contest.first_name = 'John'
    expect(contest).to be_valid
  end

  it 'has last name' do
    contest = Contest.new(
      first_name: 'John',
      last_name: '',
      email: 'john.doe@gmail.com',
      slogan: 'Testing contest slogan by users'
    )
    expect(contest).to_not be_valid

    contest.last_name = 'Doe'
    expect(contest).to be_valid
  end

  it 'has email' do
    contest = Contest.new(
      first_name: 'John',
      last_name: 'Doe',
      email: '',
      slogan: 'Testing contest slogan by users'
    )
    expect(contest).to_not be_valid

    contest.email = 'john.doe@gmail.com'
    expect(contest).to be_valid
  end

  it 'has slogan' do
    contest = Contest.new(
      first_name: 'John',
      last_name: 'Doe',
      email: 'john.doe@gmail.com',
      slogan: ''
    )
    expect(contest).to_not be_valid

    contest.slogan = 'Testing contest slogan by users'
    expect(contest).to be_valid
  end

  it 'must have at least 10 chars in slogan' do
    contest = Contest.new(
      first_name: 'John',
      last_name: 'Doe',
      email: 'john.doe@gmail.com',
      slogan: ''
    )

    contest.slogan = 'a' * 8
    expect(contest).not_to be_valid
  end

  it 'must have at least 10 chars in slogan' do
    contest = Contest.new(
      first_name: 'John',
      last_name: 'Doe',
      email: 'john.doe@gmail.com',
      slogan: ''
    )

    contest.slogan = 'a' * 8
    expect(contest).not_to be_valid
  end

  it 'must have fewer than 50 chars in username' do
    contest = Contest.new(
      first_name: 'John',
      last_name: 'Doe',
      email: 'john.doe@gmail.com',
      slogan: ''
    )

    contest.slogan = 'a' * 52
    expect(contest).not_to be_valid
  end

  context 'validations email uniqueness' do
    it { should validate_uniqueness_of(:email) }
  end
end
