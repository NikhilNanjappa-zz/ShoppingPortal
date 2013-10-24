require 'spec_helper'

describe ProductsController do
  describe "GET #index" do
	it "populates the list of products" do
	  get :index
      assert_response :success
	end
	it "renders the :index view"
  end

  describe "GET #show" do
	it "gets the details of a particular product"
	it "renders the :show template"
  end

  describe "GET #new" do
	it "creates a new product" do
      get :new
      assert_response :success
	end
	it "renders the :new template"
  end

  describe "POST #create" do
	context "with valid attributes" do
	  it "saves the new product in the database"
	  it "redirects to home page"
	end

	context "with invalid attributes" do
	  it "does not save the product"
	  it "re-renders the :new template"
	end
  end
end