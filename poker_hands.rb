def hand_builder()
  hands = {}
  faces = [14,13,12,11,10,9,8,7,6,5,4,3,2]
  suits = "cdhs"
  deck = []
  faces.each do |f|
    suits.each_byte do |s|
        deck.push(f.to_s + s.chr)
        deck = deck.shuffle!
    end
  end
  my_hand = deck.pop(5)
  opponent_hand = deck.pop(5)
  hands["my_hand"] = my_hand 
  hands["opponent_hand"] = opponent_hand
  #taking hands hash, sets key of my_hand equal to value of my_hand
  #if my_hand doesn't exist as a key, it will be created
  #if it does exist, it will just update the value that's there
  hands
end

def card_game(my_hand,opponent_hand)

end
p hand_builder()

