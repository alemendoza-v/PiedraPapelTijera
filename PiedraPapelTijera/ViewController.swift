//
//  ViewController.swift
//  PiedraPapelTijera
//
//  Created by Alejandro Mendoza Vargas on 18/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NumJugador: UILabel!
    @IBOutlet weak var NumComputadora: UILabel!
    @IBOutlet weak var OpcionJugador: UILabel!
    @IBOutlet weak var OpcionComputadora: UILabel!
    @IBOutlet weak var Ganador: UILabel!
    @IBOutlet weak var Rock: UIButton!
    @IBOutlet weak var Scissors: UIButton!
    @IBOutlet weak var Paper: UIButton!
    
    public var partida : Partida
    public var obOpcion : OpcionRandom
    
    public init() {
        self.partida = Partida(puntajeJugador : 0, puntajeComputadora : 0)
        self.obOpcion = OpcionRandom()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.partida = Partida(puntajeJugador : 0, puntajeComputadora : 0)
        self.obOpcion = OpcionRandom()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func jugar(_ sender: UIButton) {
        if (Rock.isTouchInside) {
            OpcionJugador.text = "Piedra"
        }
        else if (Scissors.isTouchInside) {
            OpcionJugador.text = "Tijeras"
        }
        else {
            OpcionJugador.text = "Papel"
        }
        
        OpcionComputadora.text = obOpcion.obtenerOpcion()
        
        let turno = Turno(opcionJugador : OpcionJugador.text!, opcionComputadora : OpcionComputadora.text!)
        
        let jugarTurno = JugarTurno(Partida: partida, Turno: turno)
        
        Ganador.text = jugarTurno.Jugar()
        if (Ganador.text == "Jugador") {
            NumJugador.text = String(partida.puntajeJugador)
        }
        else if (Ganador.text == "Computadora") {
            NumComputadora.text = String(partida.puntajeComputadora)
        }
        
    }
    
}

