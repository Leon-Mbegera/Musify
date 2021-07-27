require 'rails_helper'

RSpec.describe Vote, type: :model do
  it 'should have both user_id and article_id present ' do
    vote = Vote.new(user_id: 1)
    expect(vote.save).to be false
  end

  it 'should belong to a user' do
    vote = Vote.reflect_on_association(:user)
    expect(vote.macro).to eq(:belongs_to)
  end

  it 'should belong to an article' do
    vote = Vote.reflect_on_association(:article)
    expect(vote.macro).to eq(:belongs_to)
  end
end
