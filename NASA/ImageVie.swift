//
//  ImageVie.swift
//  NASA
//
//  Created by Haneen on 10/11/1444 AH.
//

import SwiftUI

struct ImageVie: View {
    @ObservedObject var imageLoader = ImageLoader()
    init (_ url : String ){
        self.imageLoader.load(url)    }
    var body: some View {
        if  let image = imageLoader.downloadImage {
            return Image(uiImage: image).resizable()}
            else{ return Image(systemName: "photo") .resizable()
                
            }
        }
    
    }



