require 'spec_helper'

describe "course_users/show" do
  before(:each) do
    @course_user = assign(:course_user, stub_model(CourseUser,
      :course_id => 1,
      :user_id => 2,
      :teacher => "Teacher"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Teacher/)
  end
end
