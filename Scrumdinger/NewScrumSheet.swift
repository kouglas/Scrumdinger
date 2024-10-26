//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/26/24.
//

import SwiftUI

struct NewScrumSheet: View {
    @Binding var isPresentingNewScrumView: Bool
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Button("Dismiss"){
                            isPresentingNewScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add"){
                           isPresentingNewScrumView = false
                        }
                    }
                
                }
        }

    }
}

#Preview {
    NewScrumSheet(isPresentingNewScrumView: .constant(true), scrums: .constant(DailyScrum.sampleData))
}
