//
//  pizzaIngredientes.swift
//  Pizza4Estapas
//
//  Created by Francisco Montes Fonseca on 09/12/17.
//  Copyright © 2017 COURSERA. All rights reserved.
//

import UIKit

class pizzaIngredientes: UIViewController {
    
    
    @IBOutlet weak var Jamón: UIButton!
    @IBOutlet weak var Aceitunas: UIButton!
    @IBOutlet weak var Anchoa: UIButton!
    @IBOutlet weak var Pepperoni: UIButton!
    @IBOutlet weak var Pavo: UIButton!
    @IBOutlet weak var Salchicha: UIButton!
    @IBOutlet weak var Cebolla: UIButton!
    @IBOutlet weak var Chile: UIButton!
    @IBOutlet weak var Pimiento: UIButton!
    @IBOutlet weak var Carne: UIButton!
    @IBOutlet weak var Piña: UIButton!
    @IBOutlet weak var Atún: UIButton!
    @IBOutlet weak var Seleccion: UILabel!
    var ingredientesBandera = 0
    var JamónBandera = 0
    var AceitunasBandera = 0
    var AnchoaBandera = 0
    var PepperoniBandera = 0
    var PavoBandera = 0
    var SalchichaBandera = 0
    var CebollaBandera = 0
    var ChileBandera = 0
    var PimientoBandera = 0
    var CarneBandera = 0
    var PiñaBandera = 0
    var AtúnBandera = 0
    var ingredientesSeleccion:[String] = []
    let colores = [ UIColor(red:151/255.0, green: 255/255.0, blue: 106/255.0, alpha: 1),
                    UIColor(red:108/255.0, green: 185/255.0, blue: 255/255.0, alpha: 1)]
    func cambiaSeleccion(){
        var i=1
        var texto:String=""
        if ingredientesSeleccion.count==0{
            texto = "Sin Selección"
        }else{
            for ingrediente in ingredientesSeleccion{
                texto+="\nIngrediente \(i): \(ingrediente)"
                i+=1
            }
        }
        self.Seleccion.text = texto
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        let tabBar = tabBarController as! TabBar
        tabBar.ingredientes = ingredientesSeleccion
    }
    
    
    
    @IBAction func seleccionJamon(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && JamónBandera == 0){
            print("Se selecciono el ingrediente jamón.")
            Jamón.backgroundColor = colores[1]
            ingredientesSeleccion.append("Jamón")
            JamónBandera = 1
            cambiaSeleccion()
        }else if JamónBandera == 1{
            print("Acabas de quitar el ingrediente jamón.")
            Jamón.backgroundColor = colores[0]
            JamónBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Jamón"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    @IBAction func seleccionAceitunas(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && AceitunasBandera == 0){
            print("Se selecciono el ingrediente aceitunas.")
            Aceitunas.backgroundColor = colores[1]
            ingredientesSeleccion.append("Aceitunas")
            AceitunasBandera = 1
            cambiaSeleccion()
        }else if AceitunasBandera == 1{
            print("Acabas de quitar el ingrediente aceitunas.")
            Aceitunas.backgroundColor = colores[0]
            AceitunasBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Aceitunas"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionAnchoa(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && AnchoaBandera == 0){
            print("Se selecciono el ingrediente anchoa.")
            Anchoa.backgroundColor = colores[1]
            ingredientesSeleccion.append("Anchoa")
            AnchoaBandera = 1
            cambiaSeleccion()
        }else if AnchoaBandera == 1{
            print("Acabas de quitar el ingrediente anchoa.")
            Anchoa.backgroundColor = colores[0]
            AnchoaBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Anchoa"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionPepperoni(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && PepperoniBandera == 0){
            print("Se selecciono el ingrediente pepperoni.")
            Pepperoni.backgroundColor = colores[1]
            ingredientesSeleccion.append("Pepperoni")
            PepperoniBandera = 1
            cambiaSeleccion()
        }else if PepperoniBandera == 1{
            print("Acabas de quitar el ingrediente pepperoni.")
            Pepperoni.backgroundColor = colores[0]
            PepperoniBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Pepperoni"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    
    @IBAction func seleccionCebolla(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && CebollaBandera == 0){
            print("Se selecciono el ingrediente cebolla.")
            Cebolla.backgroundColor = colores[1]
            ingredientesSeleccion.append("Cebolla")
            CebollaBandera = 1
            cambiaSeleccion()
        }else if CebollaBandera == 1{
            print("Acabas de quitar el ingrediente cebolla.")
            Cebolla.backgroundColor = colores[0]
            CebollaBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Cebolla"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionChile(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && ChileBandera == 0){
            print("Se selecciono el ingrediente chile.")
            Chile.backgroundColor = colores[1]
            ingredientesSeleccion.append("Chile")
            ChileBandera = 1
            cambiaSeleccion()
        }else if ChileBandera == 1{
            print("Acabas de quitar el ingrediente chile.")
            Chile.backgroundColor = colores[0]
            ChileBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Chile"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionPavo(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && PavoBandera == 0){
            print("Se selecciono el ingrediente pavo.")
            Pavo.backgroundColor = colores[1]
            ingredientesSeleccion.append("Pavo")
            PavoBandera = 1
            cambiaSeleccion()
        }else if PavoBandera == 1{
            print("Acabas de quitar el ingrediente pavo.")
            Pavo.backgroundColor = colores[0]
            PavoBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Pavo"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionPimineto(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && PimientoBandera == 0){
            print("Se selecciono el ingrediente pimiento.")
            Pimiento.backgroundColor = colores[1]
            ingredientesSeleccion.append("Pimiento")
            PimientoBandera = 1
            cambiaSeleccion()
        }else if PimientoBandera == 1{
            print("Acabas de quitar el ingrediente pimiento.")
            Pimiento.backgroundColor = colores[0]
            PimientoBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Pimiento"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionCarne(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && CarneBandera == 0){
            print("Se selecciono el ingrediente carne.")
            Carne.backgroundColor = colores[1]
            ingredientesSeleccion.append("Carne")
            CarneBandera = 1
            cambiaSeleccion()
        }else if CarneBandera == 1{
            print("Acabas de quitar el ingrediente carne.")
            Carne.backgroundColor = colores[0]
            CarneBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Carne"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionSalchicha(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && SalchichaBandera == 0){
            print("Se selecciono el ingrediente salchicha.")
            Salchicha.backgroundColor = colores[1]
            ingredientesSeleccion.append("Salchicha")
            SalchichaBandera = 1
            cambiaSeleccion()
        }else if SalchichaBandera == 1{
            print("Acabas de quitar el ingrediente salchicha.")
            Salchicha.backgroundColor = colores[0]
            SalchichaBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Salchicha"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func seleccionAtun(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && AtúnBandera == 0){
            print("Se selecciono el ingrediente atún.")
            Atún.backgroundColor = colores[1]
            ingredientesSeleccion.append("Atún")
            AtúnBandera = 1
            cambiaSeleccion()
        }else if AtúnBandera == 1{
            print("Acabas de quitar el ingrediente atún.")
            Atún.backgroundColor = colores[0]
            AtúnBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Atún"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    
    @IBAction func seleccionPiña(_ sender: UIButton) {
        if (ingredientesSeleccion.count < 5 && PiñaBandera == 0){
            print("Se selecciono el ingrediente chile.")
            Piña.backgroundColor = colores[1]
            ingredientesSeleccion.append("Piña")
            PiñaBandera = 1
            cambiaSeleccion()
        }else if PiñaBandera == 1{
            print("Acabas de quitar el ingrediente piña.")
            Piña.backgroundColor = colores[0]
            PiñaBandera = 0
            ingredientesSeleccion = ingredientesSeleccion.filter(){$0 != "Piña"}
            cambiaSeleccion()
        }else{
            print("Ya seleccionaste 5 ingredientes.")
        }
    }
    
    
    @IBAction func continuar(_ sender: UIButton) {
        var i = 1
        print("Selección de ingredientes:")
        if ingredientesSeleccion.count == 0{
            print("No se seleccionaron ingredientes")
        }else{
            for ingrediente in ingredientesSeleccion{
                print("Ingrediente \(i): \(ingrediente)")
                i += 1
            }
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
