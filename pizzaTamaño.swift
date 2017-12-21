//
//  pizzaTamaño.swift
//  Pizza4Estapas
//
//  Created by Francisco Montes Fonseca on 09/12/17.
//  Copyright © 2017 COURSERA. All rights reserved.
//

import UIKit

class pizzaTaman_o: UIViewController {

    
    @IBOutlet weak var tamañoChica: UIButton!
    @IBOutlet weak var tamañoMediano: UIButton!
    @IBOutlet weak var tamañoGrande: UIButton!
    @IBOutlet weak var Seleccion: UILabel!
    var tamañoBandera = 0
    
    
    var tamañoSeleccion:String = "Sin selección"
    let colores = [ UIColor(red:151/255.0, green: 255/255.0, blue: 106/255.0, alpha: 1),
                    UIColor(red:108/255.0, green: 185/255.0, blue: 255/255.0, alpha: 1)]
    
    func cambiaSeleccion(){
        self.Seleccion.text = "Selección: \(tamañoSeleccion)"
    }
    
    @IBAction func seleccionChica(_ sender: UIButton) {
        if tamañoBandera == 0{
            print("Se selecciono una pizza de tamaño chico.")
            tamañoBandera = 1
            tamañoChica.backgroundColor = colores[1]
            tamañoSeleccion = "Chica"
            cambiaSeleccion()
        }else if tamañoSeleccion == "Chica"{
            print("Acabas de quitar de la seleccion el tamaño chico.")
            tamañoBandera = 0
            tamañoChica.backgroundColor = colores[0]
            tamañoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro tamaño diferente seleccionado.")
        }
    }
    
    @IBAction func seleccionaMediano(_ sender: UIButton) {
        if tamañoBandera == 0{
            print("Se selecciono una pizza de tamaño mediano.")
            tamañoBandera = 1
            tamañoMediano.backgroundColor = colores[1]
            tamañoSeleccion = "Mediana"
            cambiaSeleccion()
        }else if tamañoSeleccion == "Mediana"{
            print("Acabas de quitar de la seleccion el tamaño mediano.")
            tamañoBandera = 0
            tamañoMediano.backgroundColor = colores[0]
            tamañoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro tamaño diferente seleccionado.")
        }
    }
    
    
    @IBAction func seleccionaGrande(_ sender: UIButton) {
        if tamañoBandera == 0{
            print("Se selecciono una pizza de tamaño grande.")
            tamañoBandera = 1
            tamañoGrande.backgroundColor = colores[1]
            tamañoSeleccion = "Grande"
            cambiaSeleccion()
        }else if tamañoSeleccion == "Grande"{
            print("Acabas de quitar de la seleccion el tamaño grande.")
            tamañoBandera = 0
            tamañoGrande.backgroundColor = colores[0]
            tamañoSeleccion = "Sin selección"
            cambiaSeleccion()
        }else{
            print("Ya existe otro tamaño diferente seleccionado.")
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        let tabBar = tabBarController as! TabBar
        tabBar.tamaño = tamañoSeleccion
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
