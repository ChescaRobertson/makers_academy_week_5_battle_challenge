def sign_in_play
  visit '/'
    fill_in :player_1_name, with: "Luke"
    fill_in :player_2_name, with: "Francesca"
    click_button "Submit"
end