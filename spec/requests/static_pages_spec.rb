require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  let(:base_title) { $base_title = 'Twitter clone: ZWITTER |' }
  describe "Home page" do
    it "should have the content 'ZWITTER#Home'" do
      visit 'static_pages/home'
      expect(page).to have_content('ZWITTER#Home')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} Home")
    end
  end

  describe "Help page" do
    it "should have the content 'ZWITTER#Help'" do
      visit 'static_pages/help'
      expect(page).to have_content('ZWITTER#Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} Help")
    end
  end

  describe "About page" do
    it "should have the content 'ZWITTER#About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('ZWITTER#About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'ZWITTER#Contact'" do
      visit 'static_pages/contact'
      expect(page).to have_content('ZWITTER#Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} Contact")
    end
  end
end
