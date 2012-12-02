require 'spec_helper'

describe "course_codes/index" do
  before(:each) do
    assign(:course_codes, [
      stub_model(CourseCode,
        :course_id => 1,
        :code => 2,
        :section => "Section",
        :day => "Day",
        :times => "Times",
        :teacher => "Teacher"
      ),
      stub_model(CourseCode,
        :course_id => 1,
        :code => 2,
        :section => "Section",
        :day => "Day",
        :times => "Times",
        :teacher => "Teacher"
      )
    ])
  end

  it "renders a list of course_codes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Section".to_s, :count => 2
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => "Times".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher".to_s, :count => 2
  end
end
