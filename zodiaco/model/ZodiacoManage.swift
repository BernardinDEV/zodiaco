//
//  ZodiacoManage.swift
//  zodiaco
//
//  Created by bernardo frisso on 04/11/20.
//

import Foundation
protocol  ZodiacoMaganeDelegate {
    func didUpadate(zod : Zod)
}
struct ZodiacoMagane {
    
        let urlString = "http://localhost:3000/zod"
      
    var  delegate : ZodiacoMaganeDelegate?
    
    
    func perfromRequest() {
        if  let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url ) { (data, response, error) in
                if error != nil {
                    print(error!)
                    print("aqui0")
                    
                }
                if let safeData  = data {
                    if let zod = self.parsejson(safeData){
                    delegate?.didUpadate(zod: zod)
                    }
                    
                }
                }
            
            task.resume()
        }
    }
    func parsejson(_ zodData : Data) ->Zod?  {
        let decoder = JSONDecoder()
        do{
            let decodeData = try decoder.decode(Zod.self, from: zodData)
       
            let aries = decodeData.aries
            let aquario =  decodeData.aquario
            let cancer = decodeData.cancer
            let capricornio = decodeData.capricornio
            let escorpiao = decodeData.escorpiao
            let gemeos = decodeData.gemeos
            let leao = decodeData.leao
            let sargitario = decodeData.sargitario
            let touro = decodeData.touro
            let libra =  decodeData.libra
            let peixes = decodeData.peixes
            let virgem = decodeData.virgem
            let  zod = Zod(aries: aries, touro: touro, gemeos: gemeos, cancer: cancer, leao: leao, virgem: virgem, libra: libra, escorpiao: escorpiao, sargitario: sargitario, capricornio: capricornio, aquario: aquario, peixes: peixes)
            
            return zod
        } catch {
            print(error)
            print("aqui2")
        return nil
        }

    }
}
