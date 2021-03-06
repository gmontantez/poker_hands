class Card
      SUITS = "cdhs"
      FACES = "L23456789TJQKA"
      SUIT_LOOKUP = {
        'c' => 0,
        'd' => 1,
        'h' => 2,
        's' => 3,
        'C' => 0,
        'D' => 1,
        'H' => 2,
        'S' => 3,
      }
      FACE_VALUES = {
        'L' =>  1,   # this is a magic low ace
        '2' =>  2,
        '3' =>  3,
        '4' =>  4,
        '5' =>  5,
        '6' =>  6,
        '7' =>  7,
        '8' =>  8,
        '9' =>  9,
        'T' => 10,
        'J' => 11,
        'Q' => 12,
        'K' => 13,
        'A' => 14,
      }

      def Card.face_value(face)
        if (face)
          FACE_VALUES[face] - 1
        else
          nil
        end
      end
end

#       def build_from_string(card)
#         build_from_face_suit(card[0,1], card[1,1])
#       end

#       def build_from_value(value)
#         @value = value
#         @suit  = value / FACES.size()
#         @face  = (value % FACES.size())
#       end

#       def build_from_face_suit(face, suit)
#         @face  = Card::face_value(face)
#         @suit  = SUIT_LOOKUP[suit]
#         @value = (@suit * FACES.size()) + (@face - 1)
#       end

#       def build_from_face_suit_values(face, suit)
#         build_from_value((face - 1) + (suit * FACES.size()))
#       end

#       # got a little carried away with this constructor ;-)
#       def initialize(*value)
#         if (value.size == 1)
#           if (value[0].respond_to?(:to_str))
#             build_from_string(value[0])
#           elsif (value[0].respond_to?(:to_int))
#             build_from_value(value[0])
#           end
#         elsif (value.size == 2)
#           if (value[0].respond_to?(:to_str) &&
#               value[1].respond_to?(:to_str))
#             build_from_face_suit(value[0], value[1])
#           elsif (value[0].respond_to?(:to_int) &&
#                  value[1].respond_to?(:to_int))
#             build_from_face_suit_values(value[0], value[1])
#           end
#         end
#       end

#       attr_reader :suit, :face, :value

#       def to_s
#         FACES[@face].chr + SUITS[@suit].chr
#       end
#     end

# p "this is #{to_s}"

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