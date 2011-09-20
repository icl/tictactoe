require 'spec_helper'

describe "subjects/index.html.erb" do
  before(:each) do
    assign(:subjects, [
      stub_model(Subject,
        :initials => "Initials"
      ),
      stub_model(Subject,
        :initials => "Initials"
      )
    ])
  end

  it "renders a list of subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Initials".to_s, :count => 2
  end
end
