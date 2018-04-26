# def poker_hands(left_hand,right_hand)
#   hands = {
#     royal_flush => 10,
#     straight_flush => 9,
#     four_of_a_kind => 8,
#     full_house => 7,
#     flush => 6,
#     straight => 5,
#     three_of_a_kind => 4,
#     two_pairs => 3,
#     one_pair => 2,
#     high_card => 1
#   }
#   hand = ""
#   poker_hands.each do |key,value|
#     p "this is the #{key}"
#     p "this is the #{value}"
#     hand << key=>value

#     if left_hand > right_hand
#       "Left wins!"
#     elsif right_hand > left_hand
#       "Right wins!"
#     else
#       "Tie."
#     end
  
# end

FACES = "AKQJT98765432"
SUITS = "cdhs"

    srand

    # build a deck
    deck = []
    FACES.each_byte do |f|
        SUITS.each_byte do |s|
            deck.push(f.chr + s.chr)
        end
    end

    # shuffle deck
    3.times do
        shuf = []
        deck.each do |c|
            loc = rand(shuf.size + 1)
            shuf.insert(loc, c)
        end
        deck = shuf.reverse
    end

    # deal common cards
    common = Array.new(5) { deck.pop }

    # deal player's hole cards
    hole = Array.new(8) { Array.new(2) { deck.pop } }

    # output hands
    hands = []
    all_fold = true
    while all_fold do
        hands = []
        hole.each do |h|
            num_common = [0, 3, 4, 5][rand(4)]
            if num_common == 5
                all_fold = false
            end
            if num_common > 0
                hand = h + common[0 ... num_common]
            else
                hand = h
                p "this is a hand #{hand}"
            end
            hands.push(hand.join(' '))
            p "these are hands #{hands}"
        end
    end

    hands.each { |h| puts h }


