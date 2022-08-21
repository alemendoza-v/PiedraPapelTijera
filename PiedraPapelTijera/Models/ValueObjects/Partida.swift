//
//  Partida.swift
//  PiedraPapelTijera
//
//  Created by Alejandro Mendoza Vargas on 20/08/22.
//

import Foundation

/// Clase que representa una partida completa de Piedra, Papel o Tijeras
public class Partida {
    // public let opcionJugador : String
    // public let opcionComputadora : String
    // public let ganador : String
    public var puntajeJugador : Int
    public var puntajeComputadora : Int
    
    /// Inicializador de objetos de la clase Partida
    /// - Parameters:
    ///   - puntajeJugador: Puntaje acumulado del jugador (usuario)
    ///   - puntajeComputadora: Puntaje acumulado de la computadora
    public init(puntajeJugador : Int, puntajeComputadora : Int) {
        self.puntajeJugador = puntajeJugador
        self.puntajeComputadora = puntajeComputadora
    }
}
