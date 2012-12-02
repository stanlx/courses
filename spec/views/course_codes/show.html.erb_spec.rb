require 'spec_helper'

describe "course_codes/show" do
  before(:each) do
    @course_code = assign(:course_code, stub_model(CourseCode,
      :course_id => 1,
      :code => 2,
      :section => "Section",
      :day => "Day",
      :times => "Times",
      :teacher => "Teacher"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Section/)
    rendered.should match(/Day/)
    rendered.should match(/Times/)
    rendered.should match(/Teacher/)
  end
end
