//
//  Hand.swift
//  TDDPokerBySwiftSecond
//
//  Created by 立岡力 on 2021/09/28.
//

import Foundation

struct Hand {
    let cards: [Card]

    
    var isPair: Bool {
        return cards[0].rank == cards[1].rank
    }
//
//    var isFlush: Bool {
//        return cards[0].suit == cards[1].suit
//    }
}
