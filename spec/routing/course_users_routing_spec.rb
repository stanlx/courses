require "spec_helper"

describe CourseUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/course_users").should route_to("course_users#index")
    end

    it "routes to #new" do
      get("/course_users/new").should route_to("course_users#new")
    end

    it "routes to #show" do
      get("/course_users/1").should route_to("course_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/course_users/1/edit").should route_to("course_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/course_users").should route_to("course_users#create")
    end

    it "routes to #update" do
      put("/course_users/1").should route_to("course_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/course_users/1").should route_to("course_users#destroy", :id => "1")
    end

  end
end
