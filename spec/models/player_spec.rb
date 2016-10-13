require 'rails_helper'

RSpec.describe Player, type: :model do
  it "has a valid Factory Girl" do
  	factory_player = build(:player)
  	expect(factory_player).to be_valid
  end

  subject {
  	described_class.new(attributes_for(:player))
  }

  it "is valid with valid attributes" do
  	expect(subject).to be_valid
  end

  it "has a name present" do
  	subject.name = nil
  	expect(subject).to_not be_valid
  end

  it 'does not have too long name' do
  	subject.name = "d" * 51
  	expect(subject).to_not be_valid
  end
end
