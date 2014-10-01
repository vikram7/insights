require 'rails_helper'

feature "User writes insight" do

  scenario 'authenticated user writes an insight' do

    insight = FactoryGirl.create(:insight)

    visit new_user_session_path
    fill_in "Email", with: insight.user.email
    fill_in "Password", with: insight.user.password
    click_on "Log in"
    fill_in "Your Insight", with: insight.body
    click_on "Post your insight!"
    expect(page).to have_content("Insight added successfully!")
  end

end
