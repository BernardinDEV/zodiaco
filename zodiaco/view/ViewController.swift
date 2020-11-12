//
//  ViewController.swift
//  zodiaco
//
//  Created by bernardo frisso on 29/10/20.
//

import UIKit

class ViewController: UIViewController,ZodiacoMaganeDelegate {
    
    var zodmagane = ZodiacoMagane()
    var zodi = Zodiaco()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zodmagane.delegate = self
    }
    
    @IBAction func load(_ sender: UIButton) {
        zodmagane.perfromRequest()
        
    }
    @IBAction func ariesButton(_ sender: UIButton) {
        alert(titulo: "Aries", subtitulo: zodi.aries)
        
    }
    
    
    @IBAction func touro(_ sender: UIButton) {
        alert(titulo: "Touro", subtitulo: zodi.touro)
    }
    
    
    @IBAction func gemeos(_ sender: UIButton) {
        alert(titulo: "Gemeos", subtitulo: zodi.gemeos)
    }

    @IBAction func cancer(_ sender: UIButton) {
        alert(titulo: "Cancer", subtitulo: zodi.cancer)
    
    }
    
    
    @IBAction func leao(_ sender: UIButton) {
        alert(titulo: "Leao", subtitulo: zodi.leao)
    }
    
    @IBAction func virgem(_ sender: UIButton) {
        alert(titulo: "Virgem", subtitulo: zodi.touro)
    }
    
    @IBAction func libra(_ sender: UIButton) {
        alert(titulo: "Libra", subtitulo: zodi.libra)
    }
    
    @IBAction func escopriao(_ sender: UIButton) {
        alert(titulo: "Escorpião", subtitulo: zodi.escorpiao)
    }
    
    
    @IBAction func sargitario(_ sender: UIButton) {
        alert(titulo: "Sagitario", subtitulo: zodi.sargitario)
    }
    
    
    @IBAction func capricornio(_ sender: UIButton) {
        alert(titulo: "Capricornio", subtitulo: zodi.capricornio)
    }
    
    
    @IBAction func aquario(_ sender: UIButton) {
        alert(titulo: "Aquario", subtitulo: zodi.aquario)
    }
    
    
    @IBAction func peixes(_ sender: UIButton) {
        alert(titulo: "Peixes", subtitulo: zodi.peixes)
    }
    
    
    
    func alert(titulo : String, subtitulo : String){
        let alert1  = UIAlertController(title: titulo, message: subtitulo ,preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Close", style: .default)
            
        alert1.addAction(action)
        present(alert1,animated: true, completion: nil)
    }
    func didUpadate(zod : Zod) {
        zodi.aries = zod.aries
        zodi.touro = zod.touro
        zodi.gemeos = zod.gemeos
        zodi.escorpiao = zod.escorpiao
        zodi.cancer = zod.cancer
        zodi.capricornio = zod.capricornio
        zodi.leao = zod.leao
        zodi.libra = zod.libra
        zodi.peixes = zod.peixes
        zodi.aquario = zod.aquario
        zodi.sargitario = zod.sargitario
        zodi.virgem = zod.virgem
        print(zodi.aries)
        
    }
}

