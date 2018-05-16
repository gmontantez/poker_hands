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

def card_separator(hand)
# Creates array for specific suit
suit_value = []
# Creates array for all faces required to win
face_value = []
	# Loop to iterate over each individual card in the hands hash
	hand.each do |card|
		# Pushes index[0] of card into face_value array
		face_value << card[0]
		# Pushes index[1] of card into suit_value array
		suit_value << card[1]
	end
end


def high_card_ties(hand1,hand2)
	face_value1 = []
	face_value2 = []
	hand1.each do |card|
		face_value1 << card[0]
	end
	hand1_faces = face_changer(face_value1)
	sorted_faces1 = hand1_faces.sort

	hand2.each do |card|
		face_value2 << card[0]
	end
	hand2_faces = face_changer(face_value2)
	sorted_faces2 = hand2_faces.sort


	if sorted_faces1[4] > sorted_faces2[4]
  		result = "hand1 high card hand wins"
  	elsif sorted_faces1[4] < sorted_faces2[4]
  		result = "hand2 high card hand wins"
  	else sorted_faces1[4] == sorted_faces2[4]
  		if sorted_faces1[3] > sorted_faces2[3]
  			result = "hand1 high card kicker hand wins"
  		elsif sorted_faces1[3] < sorted_faces2[3]
  			result = "hand2 high card kicker hand wins"
  	    else sorted_faces1[3] == sorted_faces2[3]
  			if sorted_faces1[2] > sorted_faces2[2]
  				result = "hand1 high card two kicker hand wins"
  			elsif sorted_faces1[2] < sorted_faces2[2]
  				result = "hand2 high card two kicker hand wins"
  			else sorted_faces1[2] == sorted_faces2[2]
  				if sorted_faces1[1] > sorted_faces2[1]
  					result = "hand1 high card three kicker hand wins"
  				elsif sorted_faces1[1] < sorted_faces2[1]
  					result = "hand2 high card three kicker hand wins"
  				else sorted_faces1[1] == sorted_faces2[1]
  					if sorted_faces1[0] > sorted_faces2[0]
  						result = "hand1 high card last kicker hand wins"
  					elsif sorted_faces1[0] < sorted_faces2[0]
  						result = "hand2 high card last kicker hand wins"
  					else sorted_faces1.sum == sorted_faces2.sum
     					result = "it's a tie, split the pot"
  					end
  				end
  	    	end
  	    end
  	end
end


def look_at_tie(hand1,hand2)
	# hand1 = hand_builder()
	# hand2 = hand_builder()
	face_value1 = []
	face_value2 = []
	result = ""
	
	hand1.each do |card|
		face_value1 << card[0]
	#Pushes the face value of each card into an empty array.
	end
	hand1_faces = face_changer(face_value1)
	#Changes any face value letters to integers // Output is the five card hand, numbers only, in an array
  	sorted_faces1 = hand1_faces.sort
  	# p sorted_faces1
  	sorted_array1 = sorted_faces1.sum
  	# p sorted_array1
  	new_hand1 = sorted_faces1.group_by { |card| card }.select { |k, v| v.size.eql? 1 }.keys
  	#Puts the sorted non-duplicate integers into a array (excludes the duplicate integers).
 	hand1_dupes = sorted_faces1.select{|item| sorted_faces1.count(item) > 1}.uniq
 	#Recognizes the duplicate integers in the sorted_faces1 hand (5 cards) and returns one of the duplicate integers in an array.
 	hand1_dupes_sum = hand1_dupes.sum
 	#Takes the one duplicate integer in the array (from above) and converts it into an integer only without an array.
 	# high_num1 = new_hand1.last
 	#Returns the kicker card, last number in the new_hand1 array (the array that excludes the duplicate elements), as an integer only.
 	next_kicker1 = new_hand1.pop
 	#Returns and removes the last number in the new_hand1 array (the array that excludes the duplicate elements).
 	# last_card1 = new_hand1.last
 	#Returns the next kicker card, next to the last number in the new_hand1 array (the array that excludes the duplicate elements), as an integer only.
   	# last_card1 = new_hand1[0]
   	#Returns the last kicker card, the first number in the new_hand1 array (the array that excludes the duplicate elements), as an integer only.

	hand2.each do |card|
		face_value2 << card[0]
	end
	hand2_faces = face_changer(face_value2)
  	sorted_faces2 = hand2_faces.sort
  	sorted_array2 = sorted_faces2.sum
  	new_hand2 = sorted_faces2.group_by { |card| card }.select { |k, v| v.size.eql? 1 }.keys
  	hand2_dupes = sorted_faces2.select{|item| sorted_faces2.count(item) > 1}.uniq
 	hand2_dupes_sum = hand2_dupes.sum
 	# high_num2 = new_hand2.last
 	next_kicker2 = new_hand2.pop
 	# last_card2 = new_hand2.last
  # 	last_card2 = new_hand2[0]
  	# if sorted_array1 > sorted_array2
  	# 	result = "hand1 straigt wins"
  	# elsif sorted_array1 < sorted_array2
  	# 	result = "hand2 straigt wins"
  	# end
  	if hand1_dupes_sum > hand2_dupes_sum 
		result = "hand1 wins" 
	elsif hand1_dupes_sum < hand2_dupes_sum
	 	 result = "hand2 wins"
	else hand1_dupes_sum == hand2_dupes_sum
		# if high_num1 > high_num2
  #     		result = "hand1 is the winner"
  #   	elsif high_num1 < high_num2
  #     		result = "hand2 is the winner"
  #     	elsif last_card1 > last_card2
  #     		result = "Hand1 is the winner"
  #     	elsif last_card2 > last_card1
  #     		result = "Hand2 is the winner"
      	# else 
    	result = high_card_ties(hand1,hand2)
    end

end

def face_changer(face_value)
	# Loops face_value and updates the new array with the given number
	face_value = face_value.map do |face|
		if	face == "A"
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
	face_value
end

def hand_comparison(hands)
	starter_hands = hands.clone
	starter_hands.each do |key,value|
		if royal_flush(value) == true
			starter_hands[key] = 100
		elsif straight_flush(value) == true
			starter_hands[key] = 90
		elsif four_of_a_kind(value) == true
			starter_hands[key] = 80
		elsif full_house(value) == true
			starter_hands[key] = 70
		elsif flush(value) == true
			starter_hands[key] = 60
		elsif straight(value) == true
			starter_hands[key] = 50
		elsif three_of_a_kind(value) == true
			starter_hands[key] = 40
		elsif two_pair(value) == true
			starter_hands[key] = 30
		elsif pair(value) == true
			starter_hands[key] = 20
		else high_card(value) == true
			starter_hands[key] = 10
		end
	end

	# If cloned hand1 is greater than cloned hand2 then print the string below
	if starter_hands["hand1"] > starter_hands["hand2"]
		"Player One is the winner"
	# If cloned hand1 is less than cloned hand2 then print the string below
	elsif starter_hands["hand1"] < starter_hands["hand2"]
		"Player Two is the winner"
	# Else if cloned hand1 is equal to cloned hand2 then look at straight_tiebreaker
	else starter_hands["hand1"] = starter_hands["hand2"]
		look_at_tie(hands['hand1'],hands['hand2'])
	end
end

# tie breaker is splitting the hands and gathering sum then returning winning score(highest sum)
# def straight_tiebreaker(hand1,hand2)
#   	suit_value = []
#   	face_value = []
#   	array_sum1 = []
#   	array_sum2 = []
#   	result = ""
#   hand1.each do |card|
#     face_value << card[0]
#     suit_value << card[1]
#   end
#     face_value = face_changer(face_value)
#     face_value.sort!
#     newarray1 = [*face_value[0]..face_value[0]+4]
#     array_sum1 = newarray1.sum

#   hand2.each do |card|
#     face_value << card[0]
#     suit_value << card[1]
#   end
#     face_value = face_changer(face_value)
#     face_value.sort!
#     newarray2 = [*face_value[0]..face_value[0]+4]
#     array_sum2 = newarray2.sum
#     if array_sum1 > array_sum2
#     	result = "hand1 wins"
#     else 
#     	result = "hand2 wins"
#     end
#    	result
# end

def royal_flush(hand)
suit_value = []
face_value = []
	hand.each do |card|
		face_value << card[0]
		suit_value << card[1]
	end
	# suit_value = card_separator(hand)
	# If statement checking length of the suit value after suits are separated from royal flush => should all be "d" for diamonds(uniq removes all duplicates making the length 1)
	if suit_value.uniq.length == 1
		# Then if face_value inlcudes the ["A", "K", "Q", "J", "T"] faces, the hand1 value will return true
		true if face_value.include?("A") && face_value.include?("K") && face_value.include?("Q") && face_value.include?("J") && face_value.include?("T")
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
	# Makes array for consecutive numbers in a hand
	newarray = [*face_value[0]..face_value[0]+4]
	thearray = newarray.sum
	# Removes duplicates and gives length of remaining card type
	if suit_value.uniq.length == 1
		# Evaluating hand and testing if true
		true if face_value == newarray
	end
end

def four_of_a_kind(hand)
	face_value = card_separator(hand)
	true if face_value.uniq.length == 2
end

def full_house(hand)
suit_value = []
face_value = []
	hand.each do |card|
		face_value << card[0]
		suit_value << card[1]
	end
	# face_value = card_separator(hand)
	true if face_value.uniq.length == 2
end

def flush(hand)
suit_value = []
face_value = []
	hand.each do |card|
		face_value << card[0]
		suit_value << card[1]
	end
	true if suit_value.uniq.length == 1
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
	true if face_value == newarray
end

def three_of_a_kind(hand)
	face_value = card_separator(hand)
	true if face_value.uniq.length == 3

end

def two_pair(hand)
suit_value = []
face_value = []
	hand.each do |card|
		face_value << card[0]
		suit_value << card[1]
	end
	# face_value = face_changer(face_value)
	# face_value.sort!
	# face_value = card_separator(hand)
	true if face_value.uniq.length == 3
end

def pair(hand)
	suit_value = card_separator(hand)
	true if suit_value.uniq.length == 4
end

def high_card(hand)
	face_value = card_separator(hand)
	# face_value = face_changer(face_value)
	# face_value.sort!
	true
end

# hands = hand_builder()
# p hands
# p hand_comparison (hands)