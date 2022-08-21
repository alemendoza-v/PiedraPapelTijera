//
//  JugarTurno.swift
//  PiedraPapelTijera
//
//  Created by Alejandro Mendoza Vargas on 20/08/22.
//

import Foundation

/// Clase utilizada para jugar un turno
public class JugarTurno {
    public let Partida : Partida
    public let Turno : Turno
    
    /// Inicializador de la clase JugarTurno
    /// - Parameters:
    ///   - Partida: Partida a la que pertenece el turno
    ///   - Turno: Turno que se está juando
    public init(Partida : Partida, Turno : Turno) {
        self.Partida = Partida
        self.Turno = Turno
    }
    
    /// Funcion para determinar el ganador del turno
    /// - Returns: Regresa un string que representa el ganador, empate o error en la partida
    public func Jugar() -> String {
        if (Turno.opcionJugador == Turno.opcionComputadora) {
            return "Empate"
        }
        else if (Turno.opcionJugador == "Tijeras") {
            if (Turno.opcionComputadora == "Piedra") {
                Partida.puntajeComputadora += 1
                return ("Computadora")
            } else {
                Partida.puntajeJugador += 1
                return "Jugador"
            }
        }
        else if (Turno.opcionJugador == "Piedra") {
            if (Turno.opcionComputadora == "Papel") {
                Partida.puntajeComputadora += 1
                return ("Computadora")
            } else {
                Partida.puntajeJugador += 1
                return "Jugador"
            }
        }
        else if (Turno.opcionJugador == "Papel") {
            if (Turno.opcionComputadora == "Tijeras") {
                Partida.puntajeComputadora += 1
                return ("Computadora")
            } else {
                Partida.puntajeJugador += 1
                return "Jugador"
            }
        }
        else {
            return "Error en la partida"
        }
    }
}
