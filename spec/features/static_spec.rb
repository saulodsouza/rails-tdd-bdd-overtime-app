require "rails_helper"

describe "navigate" do
  describe "to the home page" do
    it "can be reached successfully" do
      visit root_path
      expect(page.status_code).to eq 200
    end
  end
end
