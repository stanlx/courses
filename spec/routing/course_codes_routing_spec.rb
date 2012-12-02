require "spec_helper"

describe CourseCodesController do
  describe "routing" do

    it "routes to #index" do
      get("/course_codes").should route_to("course_codes#index")
    end

    it "routes to #new" do
      get("/course_codes/new").should route_to("course_codes#new")
    end

    it "routes to #show" do
      get("/course_codes/1").should route_to("course_codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/course_codes/1/edit").should route_to("course_codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/course_codes").should route_to("course_codes#create")
    end

    it "routes to #update" do
      put("/course_codes/1").should route_to("course_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/course_codes/1").should route_to("course_codes#destroy", :id => "1")
    end

  end
end
