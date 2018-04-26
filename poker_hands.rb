def hand_builder()
faces = "AJKQT98765432"
suits = "cdhs"
deck = []
hands = {}
  faces.each_byte do |f|
    suits.each_byte do |s|
       deck.push(f.chr + s.chr)
       # Shuffles the deck array after the faces and suits characters have been added together into one array
       deck = deck.shuffle!
    end
  end
  hand1 = deck.pop(5)
  # hand2 = deck.pop(5)
  # Takes the hands hash and sets key of hand1 equal to value of hand1 // If hand one does not exist as a key then it will be created // If hand1 does exist it will just update the value that is there
  hands["hand1"] = hand1
  # hands["hand2"] = hand2
  royal_flush(hands)
  hands
end

def royal_flush(hands)
  suit_value = [] #give an empty array to suit_value to be able to push each index position 1 into it in conditional below 
  face_value = [] #give an empty array to face_value to be able to push each index position 0 into it in conditional below 
  hand = hands['hand1'] #digging into hash to give variable name to hand of cards
    hand.each do |card| #iterates over each hand of cards
      face_value << card[0] #iterates over each card and pushed index position 0 into face_value array 
      suit_value << card[1] #iterates over each card and pushed index position 1 into suit_value array 
    end
    if suit_value.uniq.length == 1 #checks for duplication of index position 1 in each card that was pushed into suit_value; if it matches then it comes back 1 time 
      if face_value.include?("A") && face_value.include?("K") && face_value.include?("Q") && face_value.include?("J") && face_value.include?("T") #if index position 0 of each card in face_value array and returns all of these conditionals, then it returns "Winner winner chicken dinner" (called below)
      hands['hand1'] = "Winner winner chicken dinner"
    #if each conditional is met above, then returns "Winner winner chicken dinner"
      end
    end
  hands
end

def straight_flush(hands)
  suit_value = []
  face_value = []
  hand = hands['hand1']
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    # if suit_value.uniq.length == 1
    #   if face_value.sort.each do |card|
    #     face_value +=1
    #     face_value
    #   end
    # end
  hands
end

def face_changer(face_value)
  face_value 
end

hand_builder()



# def hand_builder()
#   hands = {}
#   faces = [A,K,Q,J,10,9,8,7,6,5,4,3,2]
#   suits = "cdhs"
#   deck = []
#   faces.each do |f|
#     suits.each_byte do |s|
#         deck.push(f.to_s + s.chr)
#         deck = deck.shuffle!
#     end
#   end
#   my_hand = deck.pop(5)
#   # opponent_hand = deck.pop(5)
#   hands["my_hand"] = my_hand 
#   # hands["opponent_hand"] = opponent_hand
#   #taking hands hash, sets key of my_hand equal to value of my_hand
#   #if my_hand doesn't exist as a key, it will be created
#   #if it does exist, it will just update the value that's there
#   hands
# end


# def card_game(my_hand,opponent_hand)

# end
# p hand_builder()

