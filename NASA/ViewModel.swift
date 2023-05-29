//
//  ViewModel.swift
//  NASA
//
//  Created by Haneen on 09/11/1444 AH.
//

import Foundation
import Combine
class ViewModel: ObservableObject{
    @Published var apod : [APOD] = []
    init() {
        self.fetch()
    }
}
extension ViewModel{
    func fetch() {
        API.getIMageOfTheDay { apod in self.apod = apod}
    }
}
