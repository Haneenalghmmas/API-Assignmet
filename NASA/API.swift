//
//  API.swift
//  NASA
//
//  Created by Haneen on 09/11/1444 AH.
//

import Foundation

class API {
     class func  getIMageOfTheDay (_ onSuccess: @escaping ([APOD]) -> ()) {
          
         Constant.session.dataTask(with: Constant.request) { (data , res , err) in
             guard let data = data , err == nil else {
                  fatalError()
             }
             do {
                 let apod = try Constant.decoder.decode([APOD].self, from: data)
                 DispatchQueue.main.async {
                    
                     onSuccess(apod)
                 }
             }
         catch {
             fatalError(error.localizedDescription)
         }
         }.resume()
    }
}
