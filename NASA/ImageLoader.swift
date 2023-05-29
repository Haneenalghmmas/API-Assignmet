//
//  ImageLoader.swift
//  NASA
//
//  Created by Haneen on 10/11/1444 AH.
//

import Foundation
import Combine
import UIKit
class ImageLoader: ObservableObject {
    @Published var downloadImage: UIImage? = nil
}
extension  ImageLoader {
    func load(_ urlString : String){
        guard let url = URL(string: urlString) else{ fatalError("Unable to parse image url")}
        Constant.session.dataTask(with: url , completionHandler: iamgeDataHandler).resume()
        
    }
    func iamgeDataHandler (data : Data?, res: URLResponse? , error: Error?){
        guard let data = data , error == nil else{
            fatalError("Unable to parse image Data ")
        }
        DispatchQueue.main.async {
            self.downloadImage = UIImage(data: data)
        }
    }
}
