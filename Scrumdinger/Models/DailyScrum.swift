//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/4/24.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}


extension DailyScrum {
    static let sampleData: [DailyScrum] = [
    DailyScrum(
        title: "Marketing",
        attendees: ["YoBill", "Daisy", "Apple", "Jimithy"],
        lengthInMinutes: 10,
        theme: .yellow),
    DailyScrum(
        title: "App Dev",
        attendees: ["ByeBob", "Peach", "Pear", "Slaycey"],
        lengthInMinutes: 5,
        theme: .orange),
    DailyScrum(
        title: "Machine learning",
        attendees: ["Justice", "Funghi", "Table", "Trappa"],
        lengthInMinutes: 5,
        theme: .poppy),
    
    
    
    ]
}
