	def test_valid_straight_flush
		hand1 = {"hand1" => ["6d", "7d", "8d", "9d", "Td"]}
		winner = {"hand1" => "Straight flush 10"} 
		assert_equal(winner,straight_flush(hand1))
	end
	def test_for_four_of_a_kind_class
		hand1 = {"hand1" => ["8h", "8s", "8d", "8c", "Td"]} 
		assert_equal(Hash,four_of_a_kind(hand1).class)
	end
	def test_four_of_a_kind
		hand1 = {"hand1" => ["8h", "8s", "8d", "8c", "Td"]}
		winner = {"hand1" => "Four of a kind winner"} 
		assert_equal(winner,four_of_a_kind(hand1))
	end
	def test_for_three_of_a_kind_class
		hand1 = {"hand1" => ["8h", "8s", "8d", "7c", "Td"]} 
		assert_equal(Hash,three_of_a_kind(hand1).class)
	end
	def test_three_of_a_kind
		hand1 = {"hand1" => ["8h", "8s", "8d", "7c", "Td"]}
		winner = {"hand1" => "Three of a kind winner"} 
		assert_equal(winner,three_of_a_kind(hand1))
	end
	def test_for_pair_class
		hand1 = {"hand1" => ["8h", "8s", "3d", "7c", "Td"]} 
		assert_equal(Hash,pair(hand1).class)
	end
	def test_for_pair
		hand1 = {"hand1" => ["8h", "8s", "3d", "7c", "Td"]} 
		winner = {"hand1" => "Pair winner"} 
		assert_equal(winner,pair(hand1))
	end
	def test_for_full_house_class
		hand1 = {"hand1" => ["8h", "8s", "4d", "4c", "4h"]} 
		assert_equal(Hash,full_house(hand1).class)
	end
	def test_for_full_house
		hand1 = {"hand1" => ["8h", "8s", "4d", "4c", "4h"]} 
		winner = {"hand1" => "Full House winner"} 
		assert_equal(winner,full_house(hand1))
	end
	def test_for_flush_class
		hand1 = {"hand1" => ["8d", "Kd", "Qd", "Jd", "Td"]} 
		assert_equal(Hash,flush(hand1).class)
	end
	def test_flush
		hand1 = {"hand1" => ["8d", "Kd", "Qd", "Jd", "Td"]}
		winner = {"hand1" => "Flush winner"} 
		assert_equal(winner,flush(hand1))
	end
	def test_valid_straight_class
		hand1 = {"hand1" => ["6d", "7h", "8d", "9s", "Tc"]}
		assert_equal(Hash,straight(hand1).class)
	end
	def test_valid_straight
		hand1 = {"hand1" => ["6d", "7h", "8d", "9s", "Tc"]}
		winner = {"hand1" => "Straight 9"} 
		assert_equal(winner,straight(hand1))
	end
	def test_for_two_pair_class
		hand1 = {"hand1" => ["8h", "8s", "4d", "4c", "5h"]} 
		assert_equal(Hash,two_pair(hand1).class)
	end
	def test_for_two_pair_class
		hand1 = {"hand1" => ["8h", "8s", "4d", "4c", "5h"]}
		winner = {"hand1" => "Two Pair winner"} 
		assert_equal(winner,two_pair(hand1))
	end 
	def test_high_card_class
		hand1 = {"hand1" => ["5d", "6h", "7d", "8s", "9c"]}
		assert_equal(Hash,high_card(hand1).class)
	end
	def test_high_card
		hand1 = {"hand1" => ["5d", "6h", "7d", "8s", "9c"]}
		hand2 = {"hand2" => ["4d", "5h", "6d", "7s", "8c"]}
		winner = {"hand1" => "My high card is 9"}
		assert_equal(winner,high_card(hand1))
	end