require 'spec_helper'

describe "courses/index" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :course_number => "Course Number",
        :name => "Name",
        :teacher => "Teacher",
        :offered_now => false
      ),
      stub_model(Course,
        :course_number => "Course Number",
        :name => "Name",
        :teacher => "Teacher",
        :offered_now => false
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Number".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
