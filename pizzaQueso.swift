//
//  pizzaQueso.swift
//  Pizza4Estapas
//
//  Created by Francisco Montes Fonseca on 09/12/17.
//  Copyright © 2017 COURSERA. All rights reserved.
//

import UIKit

class pizzaQueso: UIViewController {

    
    @IBOutlet weak var quesoMozarela: UIButton!
    @IBOutlet weak var quesoCheddar: UIButton!
    @IBOutlet weak var quesoParmesano: UIButton!
    @IBOutlet weak var quesoSinqueso: UIButton!
    @IBOutlet weak var Seleccion: UILabel!
    var quesoBandera = 0
    var quesoSeleccion:String = "Sin selección"
    let colores = [ UIColor(red:151/255.0, green: 255/255.0, blue: 106/255.0, alpha: 1),
                    UIColor(red:108/255.0, green: 185/255.0, blue: 255/255.0, alpha: 1)]
    func cambiaSeleccion(){
        self.Seleccion.text = "Selección: \(quesoSeleccion)"
    }
    
    @IBAction func seleccionMozarela(_ sender: UIButton) {
        if quesoBandera == 0{
            print("Se selecciono el queso mozarela.")
            quesoBandera = 1
            quesoMozarela.backgroundColor = colores[1]
            quesoSeleccion = "Mozarela"
            cambiaSeleccion()
        }else if quesoSeleccion == "Mozarela"{
            print("Acabas de quitar de la seleccion el queso mozarela.")
            quesoBandera = 0
            quesoMozarela.backgroundColor = colores[0]
            quesoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro queso diferente seleccionado.")
        }
    }
    
    @IBAction func Cheddar(_ sender: UIButton) {
        if quesoBandera == 0{
            print("Se selecciono el queso cheddar.")
            quesoBandera = 1
            quesoCheddar.backgroundColor = colores[1]
            quesoSeleccion = "Cheddar"
            cambiaSeleccion()
        }else if quesoSeleccion == "Cheddar"{
            print("Acabas de quitar de la seleccion el queso cheddar.")
            quesoBandera = 0
            quesoCheddar.backgroundColor = colores[0]
            quesoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro queso diferente seleccionado.")
        }
    }
    
    
    @IBAction func seleccionParmesano(_ sender: UIButton) {
        if quesoBandera == 0{
            print("Se selecciono el queso parmesano.")
            quesoBandera = 1
            quesoParmesano.backgroundColor = colores[1]
            quesoSeleccion = "Parmesano"
            cambiaSeleccion()
        }else if quesoSeleccion == "Parmesano"{
            print("Acabas de quitar de la seleccion el queso parmesano.")
            quesoBandera = 0
            quesoParmesano.backgroundColor = colores[0]
            quesoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro queso diferente seleccionado.")
        }
    }
    
    
    @IBAction func seleccionSinqueso(_ sender: UIButton) {
        if quesoBandera == 0{
            print("Se selecciono sin queso.")
            quesoBandera = 1
            quesoSinqueso.backgroundColor = colores[1]
            quesoSeleccion = "Sin queso"
            cambiaSeleccion()
        }else if quesoSeleccion == "Sin queso"{
            print("Acabas de quitar de la seleccion sin queso.")
            quesoBandera = 0
            quesoSinqueso.backgroundColor = colores[0]
            quesoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro queso diferente seleccionado.")
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        let tabBar = tabBarController as! TabBar
        tabBar.queso = quesoSeleccion
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
