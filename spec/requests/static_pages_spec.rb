require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  let(:base_title) { $base_title = 'Aircrafts catalog' }
  describe "Home page" do
    it "should have the content 'AIRCRAFTS#Home'" do
      visit 'static_pages/home'
      expect(page).to have_content('AIRCRAFTS#Home')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'AIRCRAFTS#Help'" do
      visit 'static_pages/help'
      expect(page).to have_content('AIRCRAFTS#Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'AIRCRAFTS#About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('AIRCRAFTS#About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'AIRCRAFTS#Contact'" do
      visit 'static_pages/contact'
      expect(page).to have_content('AIRCRAFTS#Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
