//
//  TDDPokerBySwiftSecondTests.swift
//  TDDPokerBySwiftSecondTests
//
//  Created by 立岡力 on 2021/09/28.
//

import XCTest
@testable import TDDPokerBySwiftSecond

class TDDPokerBySwiftSecondTests: XCTestCase {

    //    func testInitializeCard() { // Cardの初期化について
    //        var card: Card
    //
    //        card = Card(rank: .three, suit: .heart) // Cardの初期化
    //        XCTAssertEqual(card.rank, .three)
    //        XCTAssertEqual(card.suit, .heart)
    //
    //        card = Card(rank: .jack, suit: .spade)
    //        XCTAssertEqual(card.rank, .jack)
    //        XCTAssertEqual(card.suit, .spade)
    //
    //    }

        // Cardのインスタンスから文字列表記(notation)を取得する
        func testCardNotation() {
            // structはプロパティの宣言順序に応じて初期化の引数の順序が変わる
            var card: Card
            // ()の二つの式が同等であることをチェックする
            card = Card(rank: .three, suit: .heart)
            XCTAssertEqual(card.notation, "3❤︎")
            card = Card(rank: .jack, suit: .spade)
            XCTAssertEqual(card.notation, "J♠︎")
        }

    
    //
        
    //    func testHasSameSuit() {
    //
    //        // ()がYESであるかチェックする
    //        let card1 = Card(rank: .ace, suit: .heart)
    //        let card2 = Card(rank: .two, suit: .heart)
    //        XCTAssertTrue(card1.hasSameSuit(card2))
    //
    //        // ()がNOであるかチェックする
    //        let card3 = Card(rank: .ace, suit: .spade)
    //        let card4 = Card(rank: .two, suit: .heart)
    //        XCTAssertFalse(card3.hasSameSuit(card4))
    //
    //
    //    }
        
        // 2枚のカードが同じsuitを持つか判断する
        func testHasSameSuit() {
            var card1: Card
            var card2: Card

            card1 = Card(rank: .ace, suit: .heart)
            card2 = Card(rank: .two, suit: .heart)
            XCTAssertTrue(card1.hasSameSuit(card2))

            card1 = Card(rank: .ace, suit: .spade)
            card2 = Card(rank: .two, suit: .heart)
            XCTAssertFalse(card1.hasSameSuit(card2))
        }
        
        // 2枚のカードが同じrankを持つか判断する
        func testHasSameRank() {
            var card1: Card
            var card2: Card

            card1 = Card(rank: .two, suit: .spade)
            card2 = Card(rank: .two, suit: .heart)
            XCTAssertTrue(card1.hasSameRank(card2))

            card1 = Card(rank: .ace, suit: .spade)
            card2 = Card(rank: .two, suit: .heart)
            XCTAssertFalse(card1.hasSameRank(card2))
        }
        
        
    //    func testCardEqual() {
    //        var card1: Card
    //        var card2: Card
    //
    //        card1 = Card(rank: .jack, suit: .club)
    //        card2 = Card(rank: .jack, suit: .club)
    //        XCTAssertEqual(card1, card2)
    //
    //        card1 = Card(rank: .queen, suit: .diamond)
    //        card2 = Card(rank: .jack, suit: .club)
    //        XCTAssertNotEqual(card1, card2)
    //
    //    }
    //
        func testCardEqual() {
            // rankとsuitが同じ
            XCTAssertEqual(
                Card(rank: .jack, suit: .club),
                Card(rank: .jack, suit: .club)
            )
            // rankとsuitが異なる
            XCTAssertNotEqual(
                Card(rank: .queen, suit: .diamond),
                Card(rank: .jack, suit: .club)
            )
            // rankが同じでsuitが異なる
            XCTAssertNotEqual(
                Card(rank: .jack, suit: .diamond),
                Card(rank: .jack, suit: .club)
            )
            // rankが異なりsuitが同じ
            XCTAssertNotEqual(
                Card(rank: .queen, suit: .club),
                Card(rank: .jack, suit: .club)
            )
        }
    //
    //    func testIsPair() {
    //        var card1: Card
    //        var card2: Card
    //        var hand: Hand
    //
    //        card1 = Card(rank: .king, suit: .spade)
    //        card2 = Card(rank: .king, suit: .heart)
    //        hand = Hand(cards: [card1, card2])
    //        XCTAssertTrue(hand.isPair)
    //
    //        card1 = Card(rank: .queen, suit: .spade)
    //        card2 = Card(rank: .king, suit: .heart)
    //        hand = Hand(cards: [card1, card2])
    //        XCTAssertFalse(hand.isPair)
    //    }
    //
    //    func testIsFlush() {
    //        var card1: Card
    //        var card2: Card
    //        var hand: Hand
    //
    //        card1 = Card(rank: .ace, suit: .heart)
    //        card2 = Card(rank: .queen, suit: .heart)
    //        hand = Hand(cards: [card1, card2])
    //        XCTAssertTrue(hand.isFlush)
    //
    //        card1 = Card(rank: .ace, suit: .spade)
    //        card2 = Card(rank: .queen, suit: .heart)
    //        hand = Hand(cards: [card1, card2])
    //        XCTAssertFalse(hand.isFlush)
    //    }

}
