require 'spec_helper'

describe "Static pages" do

  subject { page }
  describe "Home page" do

    before { visit root_path }

    it { should have_content('real estate') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end
  end
end
