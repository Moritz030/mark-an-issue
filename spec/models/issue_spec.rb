require 'rails_helper'

RSpec.describe Issue, type: :model do

  let(:issue) { build(:issue) }

  it "is valid with valid attributes" do
    expect(issue).to be_valid
    expect { issue.save }.to change(Issue, :count).by(1)
  end

  # validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:lat) }
  it { should validate_presence_of(:lng) }
  it { should validate_numericality_of(:lat) }
  it { should validate_numericality_of(:lng) }
end
