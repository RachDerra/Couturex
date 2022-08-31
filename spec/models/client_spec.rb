require 'rails_helper'
RSpec.describe Client, type: :model do
  it "Validation does not pass if the name is empty" do
    client = Client.new(name: '')
    expect( client).not_to be_valid
  end
  it "Validation does not pass if description is empty" do
    client = Client.new(name: 'Failure test')
    expect( client).not_to be_valid
  end
  it "validation passes If description is described in name and description" do
    client= Client .new(name:'True')
  end
end

