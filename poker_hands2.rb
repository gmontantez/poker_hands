# my_deck = {  
# 		["royal_flush" => 10,
# 	    "straight_flush" => 9,
# 	    "four_of_a_kind" => 8,
# 	    "full_house" => 7,
# 	    "flush" => 6,
# 	    "straight" => 5,
# 	    "three_of_a_kind" => 4,
# 	    "two_pairs" => 3,
# 	    "one_pair" => 2,
# 	    "high_card" => 1]
# 	  }

# opponent_deck = {  
# 		["royal_flush" => 10,
# 	    "straight_flush" => 9,
# 	    "four_of_a_kind" => 8,
# 	    "full_house" => 7,
# 	    "flush" => 6,
# 	    "straight" => 5,
# 	    "three_of_a_kind" => 4,
# 	    "two_pairs" => 3,
# 	    "one_pair" => 2,
# 	    "high_card" => 1]
# 	  }
# def my_deck(deck)
# 	hand = []
# 	1.times do |key,value|
# 	hand << my_deck.sample
# 	end
#   # hand = deck[deck.keys.sample]
#   puts hand
#   hand
# end
# p "this is my deck #{my_deck(deck)}"
# def opponent_deck(deck)
# 	hand = {}
# 	1.times do 
# 	hand << opponent_deck.sample
# 	end
#   # hand = deck[deck.keys.sample]
#   puts hand
#   hand
# end
# p "this is your deck #{opponent_deck(deck)}"
# p h1.values[0] == h2.values[0]

# p "my hash #{my_hash}"
# p "opponent hash #{opponent_hash}"

# Hash[*hash.to_a.shuffle.flatten]
# Hash[*{a: 1, b: 2, c: 3}.to_a.shuffle.flatten(1)]

# p "print the hash #{Hash}"
# class Hash
# 	hash = { 
# 		"royal_flush" => 10,
# 	    "straight_flush" => 9,
# 	    "four_of_a_kind" => 8,
# 	    "full_house" => 7,
# 	    "flush" => 6,
# 	    "straight" => 5,
# 	    "three_of_a_kind" => 4,
# 	    "two_pairs" => 3,
# 	    "one_pair" => 2,
# 	    "high_card" => 1
# 	  }
#   def shuffle
#     Hash[self.sample(self.length)].shuffle.join('//')
    
#   end
#   # p "this is the #{Hash}"

#   # def shuffle!
#   #   self.shuffle
    
#   # end
#   # p "this is self #{self}"
# end

# p "this is the hash #{hash}"

deck = {
    "hearts" => [2,3,4,5,6,7,8,9,10,"jack","queen","king","ace"],
    "diamonds" => [2,3,4,5,6,7,8,9,10,"jack","queen","king","ace"],
    "spades" => [2,3,4,5,6,7,8,9,10,"jack","queen","king","ace"],
    "clubs" => [2,3,4,5,6,7,8,9,10,"jack","queen","king","ace"]
}

def pull_key(key)
	key = ""
	hand = deck[keys.sample]
	puts hand
	hand
end


# def create_deck(deck)
#   hand = deck[deck.keys.sample]
#   puts hand
#   hand
# end


# def create_deck(deck)
#   key = deck.keys.sample
#   {key: deck[key]}
# end 

# p "this is the deck #{create_deck(deck)}"

# def rand_pair!
#   k,v = rand_pair
#   delete( k )
#   return k,v
# end

# deck = {
# 	"cards" => ["2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "10h", "jackH", "queenH", "kingH", "aceH",
# "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "10s", "jackS", "queenS", "kingS", "aceS"]
# }
# def create_deck(deck)
#   hand = deck[deck.keys.sample]
#   puts hand
#   hand
# end