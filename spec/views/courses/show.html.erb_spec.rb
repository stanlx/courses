require 'spec_helper'

describe "courses/show" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :course_number => "Course Number",
      :name => "Name",
      :teacher => "Teacher",
      :offered_now => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Course Number/)
    rendered.should match(/Name/)
    rendered.should match(/Teacher/)
    rendered.should match(/false/)
  end
end
