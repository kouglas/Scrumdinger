//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/2/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
