//
//  pizzaMasa.swift
//  Pizza4Estapas
//
//  Created by Francisco Montes Fonseca on 09/12/17.
//  Copyright © 2017 COURSERA. All rights reserved.
//

import UIKit

class pizzaMasa: UIViewController {

    
    @IBOutlet weak var masaDelgada: UIButton!
    @IBOutlet weak var masaCrujiente: UIButton!
    @IBOutlet weak var masaGruesa: UIButton!
    @IBOutlet weak var Seleccion: UILabel!
    var masaBandera = 0
    var masaSeleccion:String = "Sin selección"
    let colores = [ UIColor(red:151/255.0, green: 255/255.0, blue: 106/255.0, alpha: 1),
                    UIColor(red:108/255.0, green: 185/255.0, blue: 255/255.0, alpha: 1)]
    func cambiaSeleccion(){
        self.Seleccion.text = "Selección: \(masaSeleccion)"
    }
    
    @IBAction func seleccionDelgada(_ sender: UIButton) {
        if masaBandera == 0{
            print("Se selecciono la masa delgada.")
            masaBandera = 1
            masaDelgada.backgroundColor = colores[1]
            masaSeleccion = "Delgada"
            cambiaSeleccion()
        }else if masaSeleccion == "Delgada"{
            print("Acabas de quitar de la selección de la masa delgada.")
            masaBandera = 0
            masaDelgada.backgroundColor = colores[0]
            masaSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otra masa diferente seleccionada.")
        }
    }
    
    
    @IBAction func seleccionCrujiente(_ sender: UIButton) {
        if masaBandera == 0{
            print("Se selecciono la masa crujiente.")
            masaBandera = 1
            masaCrujiente.backgroundColor = colores[1]
            masaSeleccion = "Crujiente"
            cambiaSeleccion()
        }else if masaSeleccion == "Crujiente"{
            print("Acabas de quitar de la selección de la masa crujiente.")
            masaBandera = 0
            masaCrujiente.backgroundColor = colores[0]
            masaSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otra masa diferente seleccionada.")
        }
    }
    
    
    @IBAction func seleccionGruesa(_ sender: UIButton) {
        if masaBandera == 0{
            print("Se selecciono la masa gruesa.")
            masaBandera = 1
            masaGruesa.backgroundColor = colores[1]
            masaSeleccion = "Gruesa"
            cambiaSeleccion()
        }else if masaSeleccion == "Gruesa"{
            print("Acabas de quitar de la selección de la masa gruesa.")
            masaBandera = 0
            masaGruesa.backgroundColor = colores[0]
            masaSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otra masa diferente seleccionada.")
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
        tabBar.masa = masaSeleccion
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
