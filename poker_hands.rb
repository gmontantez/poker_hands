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
  hand2 = deck.pop(5)
  # Takes the hands hash and sets key of hand1 equal to value of hand1 // If hand one does not exist as a key then it will be created // If hand1 does exist it will just update the value that is there
  hands["hand1"] = hand1
  hands["hand2"] = hand2
  
  hands
end

def face_changer(face_value)
  #maps elements of one array to another, converting each letter element to a number
  face_value = face_value.map do |face|
    if face == "A"
      14
    elsif face == "K"
      13
    elsif face == "Q"
      12
    elsif face == "J"
      11
    elsif face == "T"
      10
    else
    face.to_i
    end
  end
end

def hand_comparison(hands)
  p hands
  hands.each do |key,value|
    if royal_flush(value) == true
      hands[key] = 100
    elsif straight_flush(value) == true
      hands[key] = 90
    elsif four_of_a_kind(value) == true
      hands[key] = 80
    elsif full_house(value) == true
      hands[key] = 70
    elsif flush(value) == true
      hands[key] = 60
    elsif straight(value) == true
      hands[key] = 50
    elsif three_of_a_kind(value) == true
      hands[key] = 40
    elsif two_pair(value) == true
      hands[key] = 30
    elsif pair(value) == true
      hands[key] = 20
    else high_card(value) == true
      hands[key] = 10
    end
  end
  if hands["hand1"] > hands["hand2"]
    p "hand1 is the winner"
  elsif hands["hand1"] < hands["hand2"]
    p "hand2 is the winner"
  else
    p "it's a tie"
  end
end

def royal_flush(hand)
  suit_value = [] #give an empty array to suit_value to be able to push each index position 1 into it in conditional below 
  face_value = [] #give an empty array to face_value to be able to push each index position 0 into it in conditional below
  hand.each do |card| #iterates over each hand of cards
    face_value << card[0] #iterates over each card and pushed index position 0 into face_value array 
    suit_value << card[1] #iterates over each card and pushed index position 1 into suit_value array 
  end
  if suit_value.uniq.length == 1 #checks for duplication of index position 1 in each card that was pushed into suit_value; if it matches then it comes back 1 time 
    if face_value.include?("A") && face_value.include?("K") && face_value.include?("Q") && face_value.include?("J") && face_value.include?("T") #if index position 0 of each card in face_value array and returns all of these conditionals, then it returns true
    true
  #if each conditional is met above, then returns true
    end
  end
end

def straight_flush(hand)
  suit_value = []
  face_value = []
  hand.each do |card|
    face_value << card[0]
    suit_value << card[1]
  end
    face_value = face_changer(face_value)
    face_value.sort!
    newarray = [*face_value[0]..face_value[0]+4]
    if suit_value.uniq.length == 1
      if face_value == newarray
      true
      end
    end
end

def four_of_a_kind(hand)
  suit_value = []
  face_value = []
  hand.each do |card|
    face_value << card[0]
    suit_value << card[1]
  end
  if face_value.uniq.length == 2
    true
  end

end 

def full_house(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    if face_value.uniq.length == 2 
    true
    end 
end 

def flush(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    if suit_value.uniq.length == 1
    true
    end
end 

def straight(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    face_value = face_changer(face_value)
    face_value.sort!
    newarray = [*face_value[0]..face_value[0]+4]
      if face_value == newarray
      true 
      end
end

def three_of_a_kind(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    if face_value.uniq.length == 3
    true
    end 
end 

def two_pair(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    if face_value.uniq.length == 3 
    true
    end 
end 

def pair(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    if face_value.uniq.length == 4
    true
    end 
end

def high_card(hand)
  suit_value = []
  face_value = []
    hand.each do |card|
      face_value << card[0]
      suit_value << card[1]
    end
    face_value = face_changer(face_value)
    face_value.sort!
      true
end

hands = hand_builder()
hand_comparison(hands)



