
 feature "Testing user enter names" do
   scenario "Allows users to submit names and see them on a screen" do
     sign_in_and_play
     expect(page).to have_content "Jennifer vs. Canard"
   end
 end

 feature "Hitpoint display" do
   scenario "User can submit HP points and see them" do
     sign_in_and_play
     expect(page).to have_content "Opponent has 50HP!"
   end
 end

 feature "Attack" do
   scenario "Player 1 attacks player 2 and gets a confirmation" do
     sign_in_and_play
     click_button('Attack')
     expect(page).to have_content "Jennifer attacks Canard!"
   end
 end
