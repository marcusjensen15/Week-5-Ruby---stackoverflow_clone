require 'rails_helper'

describe User do
  it { should have_many(:questions) }

  it 'confirms the user_name' do
    user = FactoryBot.create(:user)
    expect(user.user_name).to eq 'Michael Bluth'
  end
  
end
