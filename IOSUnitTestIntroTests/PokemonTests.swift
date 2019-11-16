//
//  PokemonTests.swift
//  IOSUnitTestIntroTests
//
//  Created by Timi Tejumola on 16/11/2019.
//  Copyright © 2019 Timi Tejumola. All rights reserved.
//

import XCTest
@testable import IOSUnitTestIntro
class PokemonTests: XCTestCase {

    var squirtle:Pokemon!
    var charmander:Pokemon!
    var psyduck:Pokemon!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        squirtle = nil
        charmander = nil
        psyduck = nil
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon(){
        squirtle.attack(enemy: charmander)
        squirtle.attack(enemy: psyduck)
        XCTAssertTrue(charmander.health < psyduck.health)
    }

}
