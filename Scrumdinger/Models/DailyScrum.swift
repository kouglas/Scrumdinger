//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/4/24.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
            
        }
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
    DailyScrum(
        id: UUID(),
        title: "Marketing",
        attendees: ["YoBill", "Daisy", "Apple", "Jimithy"],
        lengthInMinutes: 10,
        theme: .yellow),
    DailyScrum(
        id: UUID(),
        title: "App Dev",
        attendees: ["ByeBob", "Peach", "Pear", "Slaycey"],
        lengthInMinutes: 5,
        theme: .orange),
    DailyScrum(
        id: UUID(),
        title: "Machine learning",
        attendees: ["Justice", "Funghi", "Table", "Trappa"],
        lengthInMinutes: 5,
        theme: .poppy),
    
    
    
    ]
}
