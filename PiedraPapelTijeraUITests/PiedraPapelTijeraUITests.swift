//
//  PiedraPapelTijeraUITests.swift
//  PiedraPapelTijeraUITests
//
//  Created by Alejandro Mendoza Vargas on 18/08/22.
//

import XCTest

class PiedraPapelTijeraUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPresionarBotonPapel() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // let jugadorTextField = app.label["campoJugadorEscogio"]
        
        
        // GIVEN
        // let botonPapel = app.buttons["buttonPapel"]
        let botonPapel = app.buttons["buttonPapel"]
        
        // WHEN
        botonPapel.tap()
        
        let jugadorTextField = app.staticTexts.element(matching: .any, identifier: "campoJugadorEscogio").label
        
        // THEN
        XCTAssertEqual(jugadorTextField, "Papel")
    }
    
    func testPresionarBotonPiedra() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // let jugadorTextField = app.label["campoJugadorEscogio"]
        
        
        // GIVEN
        // let botonPapel = app.buttons["buttonPapel"]
        let botonPapel = app.buttons["buttonPiedra"]
        
        // WHEN
        botonPapel.tap()
        
        let jugadorTextField = app.staticTexts.element(matching: .any, identifier: "campoJugadorEscogio").label
        
        // THEN
        XCTAssertEqual(jugadorTextField, "Piedra")
    }
    
    func testPresionarBotonTijeras() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // let jugadorTextField = app.label["campoJugadorEscogio"]
        
        
        // GIVEN
        // let botonPapel = app.buttons["buttonPapel"]
        let botonPapel = app.buttons["buttonTijeras"]
        
        // WHEN
        botonPapel.tap()
        
        let jugadorTextField = app.staticTexts.element(matching: .any, identifier: "campoJugadorEscogio").label
        
        // THEN
        XCTAssertEqual(jugadorTextField, "Tijeras")
    }
}
