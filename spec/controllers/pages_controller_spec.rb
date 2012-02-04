require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @basic_title ="Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content=>@basic_title+"|Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
    get 'contact'
    response.should have_selector("title",
    :content=>@basic_title+"|Contact")
    end
  end
  
  describe "Get 'about" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
    get 'about'
    response.should have_selector("title",
    :content=>@basic_title+"|About")
    end
    
  end
  
  describe "Get 'help" do
    it "shoulb be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
      :content=>@basic_title+"|Help")
    end
  end

end
