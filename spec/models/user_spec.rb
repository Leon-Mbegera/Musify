require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(username: 'leon', email: 'leon@example', password: '123456') }

  it 'ensures a user has a name' do
    user = User.create(email: 'leon@example', password: '123456')
    expect(user.valid?).to be false
  end

  it 'ensures a user has an email' do
    user = User.create(username: 'leon', password: '123456')
    expect(user.valid?).to be false
  end

  it 'ensures a user has an password' do
    user = User.create(username: 'leon', email: 'leon@example')
    expect(user.valid?).to be false
  end

  it 'ensures a user can have zero or many articles' do
    user = User.reflect_on_association(:articles)
    expect(user.macro).to eq(:has_many)
  end

  it 'ensure a user can have zero or many comments' do
    user = User.reflect_on_association(:comments)
    expect(user.macro).to eq(:has_many)
  end
end
