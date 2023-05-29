//
//  ContentView.swift
//  NASA
//
//  Created by Haneen on 09/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.apod) {
                    apod in
                    ImageView(apod.url).frame(width: 375, height: 275)
                    VStack{
                        Text(apod.title).font(.title)
                        Text(apod.date)
                        Task(apod.explanation).font(.Body)
                    }
                }
            }.navigationBarTitle(Text("APOD"))
        }
    }
}


