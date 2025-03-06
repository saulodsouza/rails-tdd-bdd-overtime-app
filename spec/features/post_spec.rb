require "rails_helper"

describe "navigate" do
  before do
    @user = FactoryBot.create(:user)
    login_as @user, scope: :user
  end

  describe "index" do
    before do
      visit posts_path
    end

    it "can be reached successfully" do
      expect(page.status_code).to eq 200
    end

    it "has a title of Posts" do
      expect(page).to have_content "Posts"
    end

    it "has a list of posts" do
      FactoryBot.create(:post)
      FactoryBot.create(:second_post)
      refresh
      expect(page).to have_content(/Some rationale|Some other rationale/)
    end
  end

  describe "creation" do
    before do
      visit new_post_path
    end

    it "has a new form that can be reached" do
      expect(page.status_code).to eq 200
    end

    it "can be created from new form page" do
      fill_in "post[date]", with: "2025-02-28"
      fill_in "post[rationale]", with: "Some rationale"
      click_button "Save"
      expect(page).to have_content "Some rationale"
    end

    it "will have a user associated with it" do
      fill_in "post[date]", with: "2025-02-28"
      fill_in "post[rationale]", with: "User_Associated"
      click_button "Save"
      expect(User.last.posts.last.rationale).to eq "User_Associated"
    end
  end
end
