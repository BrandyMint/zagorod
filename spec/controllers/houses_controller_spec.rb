require 'spec_helper'

describe HousesController do
  before do
    City.stub(:default_city){FactoryGirl.create :city}
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    let(:house) { create :house }
    it "returns http success" do
      get 'show', id: house.id
      response.should be_success
    end
  end

end
