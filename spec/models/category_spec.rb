require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'should have zero or many articles' do
    first_category = Category.reflect_on_association(:articles)
    expect(first_category.macro).to eq(:has_many)
  end
end
