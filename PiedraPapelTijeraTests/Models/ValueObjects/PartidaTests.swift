//
//  Partida.swift
//  PiedraPapelTijeraTests
//
//  Created by Alejandro Mendoza Vargas on 22/08/22.
//

import XCTest
@testable import PiedraPapelTijera

class PartidaTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitPartida() throws {
        // GIVEN
        let puntajeJugador : Int = 0
        let puntajeComputadora : Int = 1
        
        // WHEN
        let partida = Partida(puntajeJugador : puntajeJugador, puntajeComputadora : puntajeComputadora)
        
        // THEN
        XCTAssertEqual(partida.puntajeJugador, puntajeJugador)
        XCTAssertEqual(partida.puntajeComputadora, puntajeComputadora)
    }
}
