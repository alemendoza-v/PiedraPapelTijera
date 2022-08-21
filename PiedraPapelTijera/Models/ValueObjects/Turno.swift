//
//  Turno.swift
//  PiedraPapelTijera
//
//  Created by Alejandro Mendoza Vargas on 20/08/22.
//

import Foundation

/// Clase utilizada para representar un turno de la partida
public class Turno {
    public let opcionJugador : String
    public let opcionComputadora : String
    
    /// Inicializador de la clase Turno
    /// - Parameters:
    ///   - opcionJugador: Opcion que escogió el jugador
    ///   - opcionComputadora: Opción que escogió la computadora
    public init(opcionJugador : String, opcionComputadora : String) {
        self.opcionJugador = opcionJugador
        self.opcionComputadora = opcionComputadora
    }
}
