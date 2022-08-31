require 'rails_helper'
RSpec.describe Category, type: :model do
  it "Validation does not pass if the name is empty" do
    category = Category.new(name: '')
    expect( category).not_to be_valid
  end
  it "Validation does not pass if description is empty" do
    category = Category.new(name: 'Failure test')
    expect( category).not_to be_valid
  end
  it "validation passes If description is described in name and description" do
    category= Category .new(name:'True')
  end
end
