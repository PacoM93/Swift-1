//
//  Confirmar.swift
//  Pizza4Estapas
//
//  Created by Francisco Montes Fonseca on 10/12/17.
//  Copyright © 2017 COURSERA. All rights reserved.
//

import UIKit

class Confirmar: UIViewController {

    @IBOutlet weak var textoTamaño: UILabel!
    @IBOutlet weak var textoMasa: UILabel!
    @IBOutlet weak var textoQueso: UILabel!
    @IBOutlet weak var textoingredientes: UILabel!
    
    
    
    
    @IBAction func Cargar(_ sender: UIButton) {
        let datos = tabBarController as! TabBar
        var i = 1
        var ingredientesResultado: String = ""
        if datos.ingredientes.count == 0{
            ingredientesResultado = "No se seleccionaron ingredientes"
        }else{
            ingredientesResultado = ""
            for ingrediente in datos.ingredientes{
                ingredientesResultado += "Ingrediente \(i): \(ingrediente)\n"
                i += 1
            }
        }
        
        textoingredientes.text = ingredientesResultado
        textoTamaño.text = datos.tamaño
        textoMasa.text = datos.masa
        textoQueso.text = datos.queso
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let datos = tabBarController as! TabBar
        var i = 1
        var ingredientesResultado: String = ""
        if datos.ingredientes.count == 0{
            ingredientesResultado = "No se seleccionaron ingredientes"
        }else{
            ingredientesResultado = ""
            for ingrediente in datos.ingredientes{
                ingredientesResultado += "Ingrediente \(i): \(ingrediente)\n"
                i += 1
            }
        }
        
        textoingredientes.text = ingredientesResultado
        textoTamaño.text = datos.tamaño
        textoMasa.text = datos.masa
        textoQueso.text = datos.queso
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showPopup(_ sender: Any) {
        let datos = tabBarController as! TabBar
        let Tamaño = datos.tamaño
        let Masa = datos.masa
        let Queso = datos.queso
        var i = 1
        var ingredientesResultado: String = ""
        if datos.ingredientes.count == 0{
            ingredientesResultado = "No se seleccionaron ingredientes"
        }else{
            ingredientesResultado = ""
            for ingrediente in datos.ingredientes{
                ingredientesResultado += "Ingrediente \(i): \(ingrediente)\n"
                i += 1
            }
        }
        if (Tamaño == "Sin selección" || Queso == "Sin selección" || Masa == "Sin selección" || ingredientesResultado == "No se seleccionaron ingredientes"){
            let popOverVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "ErrorID") as! Error
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
        }else{
            let popOverVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "GraciasID") as! Gracias
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
        }
        
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
