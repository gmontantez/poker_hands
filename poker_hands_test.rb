require "minitest/autorun"
require_relative "poker_hands.rb"

class Poker_hands_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end
	def test_for_hash
		assert_equal(Hash,hand_builder().class)
	end
	def test_for_two_hands
		assert_equal(1,hand_builder().length)
	end
	def test_for_length_of_each_hand
		hand_length1 = hand_builder()["hand1"]
	# 	hand_length2 = hand_builder()["opponent_hand"]
		assert_equal(5,hand_length1.length)
	# 	assert_equal(5,hand_length2.length)
	end
	def test_for_duplications
		hand1 = hand_builder()["hand1"]
	# 	opponent_hand = hand_builder()["opponent_hand"]
		assert_equal(hand1,hand1.uniq)
	# 	assert_equal(opponent_hand,opponent_hand.uniq)
	end
	def test_for_royal_flush_hash_class
		hand1 = {"hand1" => ["Ad", "Kd", "Qd", "Jd", "Td"]} 
		assert_equal(Hash,royal_flush(hand1).class)
	end
	def test_valid_royal_flush
		hand1 = {"hand1" => ["Ad", "Kd", "Qd", "Jd", "Td"]}
		winner = {"hand1" => "Winner winner chicken dinner"} 
		assert_equal(winner,royal_flush(hand1))
	end
	def test_for_straight_flush_hash_class
		hand1 = {"hand1" => ["8d", "6d", "7d", "5d", "9d"]} 
		assert_equal(Hash,straight_flush(hand1).class)
	end
	def test_face_changer
		face_value = []
		assert_equal(Array,face_changer(face_value).class)
	end
	def test_face_A_to_14
		hand1 = ["A", "3", "2", "5", "7"]
		changed_hand = [14, 3, 2, 5, 7]
		assert_equal(changed_hand,face_changer(hand1))
	end
	def test_face_all_letters
		hand1 = ["A", "K", "Q", "J", "T"]
		changed_hand = [14, 13, 12, 11, 10]
		assert_equal(changed_hand,face_changer(hand1))
	end
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
		winner = {"hand1" => "Straight 10"} 
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
end
