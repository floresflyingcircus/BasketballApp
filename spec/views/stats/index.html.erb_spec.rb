require 'spec_helper'

describe "stats/index" do
  before(:each) do
    assign(:stats, [
      stub_model(Stat,
        :two_made => 1,
        :two_miss => 2,
        :three_made => 3,
        :three_miss => 4,
        :ft_made => 5,
        :ft_miss => 6,
        :off_reb => 7,
        :def_reb => 8,
        :block => 9,
        :assist => 10,
        :steal => 11,
        :turnover => 12,
        :player => nil
      ),
      stub_model(Stat,
        :two_made => 1,
        :two_miss => 2,
        :three_made => 3,
        :three_miss => 4,
        :ft_made => 5,
        :ft_miss => 6,
        :off_reb => 7,
        :def_reb => 8,
        :block => 9,
        :assist => 10,
        :steal => 11,
        :turnover => 12,
        :player => nil
      )
    ])
  end

  it "renders a list of stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
