require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :name => "MyString",
      :number => 1,
      :in_game => false
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", players_path, "post" do
      assert_select "input#player_name[name=?]", "player[name]"
      assert_select "input#player_number[name=?]", "player[number]"
      assert_select "input#player_in_game[name=?]", "player[in_game]"
    end
  end
end
