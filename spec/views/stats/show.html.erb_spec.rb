require 'spec_helper'

describe "stats/show" do
  before(:each) do
    @stat = assign(:stat, stub_model(Stat,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/11/)
    rendered.should match(/12/)
    rendered.should match(//)
  end
end
