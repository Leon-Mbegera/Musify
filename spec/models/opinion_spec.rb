require 'rails_helper'

RSpec.describe Opinion, type: :model do
  it 'should have both user_id and article_id present' do
    opinion = Opinion.new(article_id: 1)
    expect(opinion.save).to be false
  end

  it 'should belong to a particular user' do
    opinion = Opinion.reflect_on_association(:user)
    expect(opinion.macro).to eq(:belongs_to)
  end

  it 'should belong to a particular article' do
    opinion = Opinion.reflect_on_association(:article)
    expect(opinion.macro).to eq(:belongs_to)
  end
end
