//
//  OpcionRandom.swift
//  PiedraPapelTijera
//
//  Created by Alejandro Mendoza Vargas on 20/08/22.
//

import Foundation

/// Clase utilizada para obtener una opcion aleatoria
public class OpcionRandom {    
    /// Funcion para comparar el valor y determinar una opcion
    /// - Returns: Un string que representa la opcion aleatoria
    public func obtenerOpcion() -> String {
        let randomInt = Int.random(in: 1..<3)
        if (randomInt == 1) {
            return "Papel"
        }
        else if (randomInt == 1) {
            return "Piedra"
        }
        else {
            return "Tijeras"
        }
    }
}
