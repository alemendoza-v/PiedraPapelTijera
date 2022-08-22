//
//  JugarTurnoTests.swift
//  PiedraPapelTijeraTests
//
//  Created by Alejandro Mendoza Vargas on 22/08/22.
//

import XCTest
@testable import PiedraPapelTijera

class JugarTurnoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testJugarTurnoPiedravsPapel() throws {
        // GIVEN
        let partida = Partida(puntajeJugador: 0, puntajeComputadora: 0)
        let turno = Turno(opcionJugador: "Piedra", opcionComputadora: "Papel")
        let jugarTurno = JugarTurno(Partida: partida, Turno: turno)
        
        // WHEN
        let ganador = jugarTurno.Jugar()
        
        // THEN
        let resultadoEsperado = "Computadora"
        XCTAssertEqual(ganador, resultadoEsperado)
        XCTAssertEqual(partida.puntajeJugador, 0)
        XCTAssertEqual(partida.puntajeComputadora, 1)
    }
    
    func testJugarTurnoTijerasvsPapel() throws {
        // GIVEN
        let partida = Partida(puntajeJugador: 0, puntajeComputadora: 0)
        let turno = Turno(opcionJugador: "Tijeras", opcionComputadora: "Papel")
        let jugarTurno = JugarTurno(Partida: partida, Turno: turno)
        
        // WHEN
        let ganador = jugarTurno.Jugar()
        
        // THEN
        let resultadoEsperado = "Jugador"
        XCTAssertEqual(ganador, resultadoEsperado)
        XCTAssertEqual(partida.puntajeJugador, 1)
        XCTAssertEqual(partida.puntajeComputadora, 0)
    }
    
    func testJugarTurnoEmpate() throws {
        // GIVEN
        let partida = Partida(puntajeJugador: 0, puntajeComputadora: 0)
        let turno = Turno(opcionJugador: "Tijeras", opcionComputadora: "Tijeras")
        let jugarTurno = JugarTurno(Partida: partida, Turno: turno)
        
        // WHEN
        let ganador = jugarTurno.Jugar()
        
        // THEN
        let resultadoEsperado = "Empate"
        XCTAssertEqual(ganador, resultadoEsperado)
        XCTAssertEqual(partida.puntajeJugador, 0)
        XCTAssertEqual(partida.puntajeComputadora, 0)
    }
}
