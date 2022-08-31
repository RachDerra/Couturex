require 'rails_helper'
RSpec.describe Model, type: :model do
  it "Validation does not pass if the name is empty" do
    model = Model.new(name: '')
    expect( model).not_to be_valid
  end
  it "Validation does not pass if description is empty" do
    model = Model.new(name: 'Failure test')
    expect( model).not_to be_valid
  end
  it "validation passes If description is described in name and description" do
    model= Model .new(name:'True')
  end
end

