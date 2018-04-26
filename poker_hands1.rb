def left_hand
  hands = {
    royal_flush => 10,
    straight_flush => 9,
    four_of_a_kind => 8,
    full_house => 7,
    flush => 6,
    straight => 5,
    three_of_a_kind => 4,
    two_pairs => 3,
    one_pair => 2,
    high_card => 1
  }
end

def right_hand
  hands = {
    royal_flush => 10,
    straight_flush => 9,
    four_of_a_kind => 8,
    full_house => 7,
    flush => 6,
    straight => 5,
    three_of_a_kind => 4,
    two_pairs => 3,
    one_pair => 2,
    high_card => 1
  }
end

# deck = ["2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "10h", "jackH", "queenH", "kingH", "aceH",
# "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "10s", "jackS", "queenS", "kingS", "aceS"]

# def my_deck(deck)
# 	hand = []
# 	5.times do 
# 	hand << deck.sample
# 	end
#   # hand = deck[deck.keys.sample]
#   puts hand
#   hand
# end
# p "this is my deck #{my_deck(deck)}"
# def opponent_deck(deck)
# 	hand = []
# 	5.times do 
# 	hand << deck.sample
# 	end
#   # hand = deck[deck.keys.sample]
#   puts hand
#   hand
# end

# p "this is your deck #{opponent_deck(deck)}"