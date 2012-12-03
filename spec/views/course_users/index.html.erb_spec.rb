require 'spec_helper'

describe "course_users/index" do
  before(:each) do
    assign(:course_users, [
      stub_model(CourseUser,
        :course_id => 1,
        :user_id => 2,
        :teacher => "Teacher"
      ),
      stub_model(CourseUser,
        :course_id => 1,
        :user_id => 2,
        :teacher => "Teacher"
      )
    ])
  end

  it "renders a list of course_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Teacher".to_s, :count => 2
  end
end
