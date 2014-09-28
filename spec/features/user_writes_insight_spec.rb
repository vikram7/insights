require 'rails_helper'

feature "User writes insight" do

  scenario 'authenticated user writes an insight' do
    user = FactoryGirl.create(:user)
    insight = FactoryGirl.create(:insight)
    tag = FactoryGirl.create(:tag)
    # insight.tags << tag

    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "Submit Insight"
    fill_in "Body", with: insight.body
    click_on "Post your insight!"
    save_and_open_page
    expect(page).to have_content("Insight added successfully!")
  end

end
