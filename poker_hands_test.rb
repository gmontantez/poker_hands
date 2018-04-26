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
	def test_for_royal_flush_hash
		hand1 = {"hand1" => ["Ad", "Kd", "Qd", "Jd", "Td"]} 
		assert_equal(Hash,royal_flush(hand1).class)
	end
	def test_valid_royal_flush
		hand1 = {"hand1" => ["Ad", "Kd", "Qd", "Jd", "Td"]}
		winner = {"hand1" => "Winner winner chicken dinner"} 
		assert_equal(winner,royal_flush(hand1))
	end
	def test_for_straight_flush_hash
		hand1 = {"hand1" => ["8d", "6d", "7d", "5d", "9d"]} 
		assert_equal(Hash,straight_flush(hand1).class)
	end
	def test_valid_straight_flush
		hand1 = {"hand1" => ["8d", "6d", "7d", "5d", "9d"]}
		winner = {"hand1" => "Winner winner chicken dinner"} 
		assert_equal(winner,straight_flush(hand1))
	end


end
