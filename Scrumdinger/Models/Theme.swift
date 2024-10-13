//
//  Theme.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/4/24.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .orange, .lavender, .poppy, .periwinkle, .seafoam, .sky, .yellow, .tan, .teal: return .black
        case . purple, .oxblood, .navy, .magenta, .indigo: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
}
