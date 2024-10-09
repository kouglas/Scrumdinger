//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/2/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
