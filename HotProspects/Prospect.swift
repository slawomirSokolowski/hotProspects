//
//  Prospect.swift
//  HotProspects
//
//  Created by Slawomir on 28/01/2022.
//

import SwiftUI

class Prospect: Identifiable, Codable {
    var id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    fileprivate(set) var isContacted = false
    
}

@MainActor class Prospects: ObservableObject {
    @Published var people: [Prospect]
   
    init() {
        self.people = []
    }
    
    func toggle(_ prospect: Prospect) {
        objectWillChange.send()
        prospect.isContacted.toggle()
    }

}
