//
//  OpcionRandom.swift
//  PiedraPapelTijeraTests
//
//  Created by Alejandro Mendoza Vargas on 22/08/22.
//

import XCTest
@testable import PiedraPapelTijera

class OpcionRandomTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOpcionRandom() throws {
        // GIVEN
        let opcionRandom = OpcionRandom()
        
        // WHEN
        let opcionObtenida : String = opcionRandom.obtenerOpcion()
        
        // THEN
        // let opcionEsperada1 : String = "Papel"
        // let opcionEsperada2 : String = "Piedra"
        // let opcionEsperada3 : String = "Tijeras"
        let opciones = ["Papel", "Piedra", "Tijeras"]
        // XCTAssertEqual(opcionObtenida, opcionEsperada1 || opcionEsperada2 || opcionEsperada3)
        XCTAssert(opciones.contains(opcionObtenida))
    }
}

