require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end

describe "StaticPages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  it "should have the right links on the layout" do
  visit root_path
  click_link "About"
  expect(page).to have_title(full_title('About Us'))
  click_link "Help"
  expect(page).to have_title(full_title('Help'))
  click_link "Contact"
  expect(page).to have_title(full_title('Contact'))
  click_link "Home"
  click_link "Sign up now"
  expect(page).to have_title(full_title('Sign up'))
  click_link "sample app"
  expect(page).to have_title(full_title('')) 
end
  

  describe "Home page" do
    before {visit root_path}
    let(:heading) {'Sample App'}
    let(:page_title) {''}
end

    describe "Help page" do
      before {visit help_path}
      let(:heading) {'Help'}
      let(:page_title) {'Help'}

end

    describe "About page" do
      before {visit about_path}
      let(:heading) {'About'}
      let(:page_title) {'About Us'}
end

    describe "Contact page" do
      before {visit contact_path}
      let(:heading) {'Contact'}
      let(:page_title) {'Contact'}
end

end
end 
