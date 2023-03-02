//
//  NetworkListaData.swift
//  TestDemoIos
//
//  Created by MacBook Pro on 2/03/23.
//

import Foundation


protocol IListRepositoryNetwork {
    func loasList(list :[String])
}

struct NetworkListData {
    var delegado : IListRepositoryNetwork?
    
    func loadDataList (){
        let urlService = "https://0977-2800-200-e3c0-1123-8d1f-8541-1981-610a.ngrok.io/api/user/listTest"
        
        if let url = URL(string: urlService){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){data,response,error in
                if error != nil{print("Error al obtener datos")}
                
                if let dataListResponse = data?.parseDataList(){
                    if let listFinalize = self.parseJsonList(datosServices : dataListResponse){
                        print("lista servicios", listFinalize)
                        delegado.self?.loasList(list: listFinalize)
                    }
                }
                
            }
            
            task.resume()
        }
    }
    
    func parseJsonList(datosServices : Data) -> [String]?{
        let decodificador = JSONDecoder()
        do{
            
            let dataDecodificada = try decodificador.decode([String].self,from: datosServices)
            return dataDecodificada
        }catch{
            print("Error al decodificar")
            return nil
        }
        
    }
    
}

extension Data {
    func parseDataList() -> Data?{
        let dataString = String(data: self, encoding: .utf8)
        guard let data = dataString?.data(using: .utf8) else { return nil }
        return data
    }
    
}
