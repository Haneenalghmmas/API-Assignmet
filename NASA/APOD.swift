//
//  APOD].swift
//  NASA
//
//  Created by Haneen on 09/11/1444 AH.
//

import Foundation

struct APOD : Identifiable , Codable {
    var id = UUID()
    let title : String
    let explanation : String
    let date : String
    let url : String
}
