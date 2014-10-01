require 'rails_helper'

feature "User tags insight" do

  scenario 'authenticated user adds tag to insight' do
    insight = FactoryGirl.create(:insight)

    visit new_user_session_path
    fill_in "Email", with: insight.user.email
    fill_in "Password", with: insight.user.password
    click_on "Log in"
    fill_in "insight_tag_list", with: "SQL, ActiveRecord"
    click_on "Add tags"
    #expect page to have something here
  end

end
