require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "pages" do

  describe "About page" do
    it "should have the content 'about'" do
      visit 'about'
      page.should have_content('about')
    end
  end

#  describe "Home page" do
#     it "should have the title 'Home'" do
#       visit 'home'
#       page.should have_selector('title', :text => "Home")
#     end
#  end

end
