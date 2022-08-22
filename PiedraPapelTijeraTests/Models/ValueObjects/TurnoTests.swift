//
//  Turno.swift
//  PiedraPapelTijeraTests
//
//  Created by Alejandro Mendoza Vargas on 22/08/22.
//

import XCTest
@testable import PiedraPapelTijera

class TurnoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitTurno() throws {
        // GIVEN
        let opcionJugador : String = "Papel"
        let opcionComputadora : String = "Tijeras"
        
        // WHEN
        let turno = Turno(opcionJugador: opcionJugador, opcionComputadora: opcionComputadora)
        
        // THEN
        XCTAssertEqual(turno.opcionJugador, opcionJugador)
        XCTAssertEqual(turno.opcionComputadora, opcionComputadora)
    }
}
