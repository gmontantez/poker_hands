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
		assert_equal(2,hand_builder().length)
	end
	def test_for_length_of_each_hand
		hand_length1 = hand_builder()["my_hand"]
		hand_length2 = hand_builder()["opponent_hand"]
		assert_equal(5,hand_length1.length)
		assert_equal(5,hand_length2.length)
	end
	def test_for_duplications
		my_hand = hand_builder()["my_hand"]
		opponent_hand = hand_builder()["opponent_hand"]
		assert_equal(my_hand,my_hand.uniq)
		assert_equal(opponent_hand,opponent_hand.uniq)
	end

end
