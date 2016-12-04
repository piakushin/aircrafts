require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home page" do
    it "should have the content 'ZWITTER#Home'" do
      visit 'static_pages/home'
      expect(page).to have_content('ZWITTER#Home')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Twitter clone: ZWITTER | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'ZWITTER#Help'" do
      visit 'static_pages/help'
      expect(page).to have_content('ZWITTER#Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Twitter clone: ZWITTER | Help")
    end
  end

  describe "About page" do
    it "should have the content 'ZWITTER#About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('ZWITTER#About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Twitter clone: ZWITTER | About Us")
    end
  end
end
