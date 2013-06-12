require 'spec_helper'

describe "stats/new" do
  before(:each) do
    assign(:stat, stub_model(Stat,
      :two_made => 1,
      :two_miss => 1,
      :three_made => 1,
      :three_miss => 1,
      :ft_made => 1,
      :ft_miss => 1,
      :off_reb => 1,
      :def_reb => 1,
      :block => 1,
      :assist => 1,
      :steal => 1,
      :turnover => 1,
      :player => nil
    ).as_new_record)
  end

  it "renders new stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stats_path, "post" do
      assert_select "input#stat_two_made[name=?]", "stat[two_made]"
      assert_select "input#stat_two_miss[name=?]", "stat[two_miss]"
      assert_select "input#stat_three_made[name=?]", "stat[three_made]"
      assert_select "input#stat_three_miss[name=?]", "stat[three_miss]"
      assert_select "input#stat_ft_made[name=?]", "stat[ft_made]"
      assert_select "input#stat_ft_miss[name=?]", "stat[ft_miss]"
      assert_select "input#stat_off_reb[name=?]", "stat[off_reb]"
      assert_select "input#stat_def_reb[name=?]", "stat[def_reb]"
      assert_select "input#stat_block[name=?]", "stat[block]"
      assert_select "input#stat_assist[name=?]", "stat[assist]"
      assert_select "input#stat_steal[name=?]", "stat[steal]"
      assert_select "input#stat_turnover[name=?]", "stat[turnover]"
      assert_select "input#stat_player[name=?]", "stat[player]"
    end
  end
end
