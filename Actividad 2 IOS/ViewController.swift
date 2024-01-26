import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Mensaje: UILabel!
    @IBOutlet weak var NumeroUsuario: UITextField!
    @IBOutlet weak var NumeroGanador: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NumeroGanador.text = "?"
    }
    @IBAction func InicioJuego(_ sender: UIButton) {
        let NumeroPC = Int.random(in: 1...6)
        if let numeroIngresadoStr = NumeroUsuario.text, let NumeroJugador = Int(numeroIngresadoStr), NumeroJugador >= 1 && NumeroJugador <= 6 {
            if NumeroJugador == NumeroPC {
                Mensaje.text = "¡Ganaste! Acertaste el número."
                NumeroGanador.text = "\(NumeroPC)"
                self.view.backgroundColor = .green
            } else {
                Mensaje.text = "Incorrecto. El número era \(NumeroPC). Inténtalo de nuevo."
                NumeroGanador.text = "\(NumeroPC)"
                self.view.backgroundColor = .red
            }
        }
    }
}

