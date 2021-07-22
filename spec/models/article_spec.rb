require 'rails_helper'

RSpec.describe Article, type: :model do

  it 'should have zero or many votes' do
    first_article = Article.reflect_on_association(:votes)
    expect(first_article.macro).to eq(:has_many)
  end

  it 'should have zero or many comments' do
    second_article = Article.reflect_on_association(:comments)
    expect(second_article.macro).to eq(:has_many)
  end

  it 'should belong to only one category' do
    third_article = Article.reflect_on_association(:category)
    expect(third_article.macro).to eq(:belongs_to)
  end

  it 'should belong to only one user' do
    fourth_article = Article.reflect_on_association(:user)
    expect(fourth_article.macro).to eq(:belongs_to)
  end
end