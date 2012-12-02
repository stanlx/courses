require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :course_number => "MyString",
      :name => "MyString",
      :teacher => "MyString",
      :offered_now => false
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_course_number", :name => "course[course_number]"
      assert_select "input#course_name", :name => "course[name]"
      assert_select "input#course_teacher", :name => "course[teacher]"
      assert_select "input#course_offered_now", :name => "course[offered_now]"
    end
  end
end
