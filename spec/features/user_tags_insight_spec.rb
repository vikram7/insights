require 'rails_helper'

feature "User tags insight" do

  scenario 'authenticated user adds tag to insight' do
    insight = FactoryGirl.create(:insight)

    visit new_user_session_path
    fill_in "Email", with: insight.user.email
    fill_in "Password", with: insight.user.password
    click_on "Log in"
    click_on "Submit Insight"
    fill_in "Body", with: insight.body
    click_on "Post your insight!"
    fill_in "insight_tag_list", with: "SQL, ActiveRecord"
    click_on "Add tags"
  end

end
