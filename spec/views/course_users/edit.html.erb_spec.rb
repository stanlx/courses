require 'spec_helper'

describe "course_users/edit" do
  before(:each) do
    @course_user = assign(:course_user, stub_model(CourseUser,
      :course_id => 1,
      :user_id => 1,
      :teacher => "MyString"
    ))
  end

  it "renders the edit course_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_users_path(@course_user), :method => "post" do
      assert_select "input#course_user_course_id", :name => "course_user[course_id]"
      assert_select "input#course_user_user_id", :name => "course_user[user_id]"
      assert_select "input#course_user_teacher", :name => "course_user[teacher]"
    end
  end
end
