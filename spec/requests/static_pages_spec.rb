require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Demop'" do
      visit '/static_pages/home'
      expect(page).to have_content('Demop')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Prayer for prayer lovers")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Prayer for prayer lovers | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Prayer for prayer lovers | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Prayer for prayer lovers | Contact")
    end
  end
end