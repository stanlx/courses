require 'spec_helper'

describe "course_codes/new" do
  before(:each) do
    assign(:course_code, stub_model(CourseCode,
      :course_id => 1,
      :code => 1,
      :section => "MyString",
      :day => "MyString",
      :times => "MyString",
      :teacher => "MyString"
    ).as_new_record)
  end

  it "renders new course_code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_codes_path, :method => "post" do
      assert_select "input#course_code_course_id", :name => "course_code[course_id]"
      assert_select "input#course_code_code", :name => "course_code[code]"
      assert_select "input#course_code_section", :name => "course_code[section]"
      assert_select "input#course_code_day", :name => "course_code[day]"
      assert_select "input#course_code_times", :name => "course_code[times]"
      assert_select "input#course_code_teacher", :name => "course_code[teacher]"
    end
  end
end
