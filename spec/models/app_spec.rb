require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe App do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should create a new instance given valid attributes" do
    App.create!(@valid_attributes)
  end
  
  describe "responding to subscribe and unsubscribe" do
    it "should add a membership when subscribe is called" do
    end
    
  end
  
end