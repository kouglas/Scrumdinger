//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/13/24.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
//        make text view span the width of the parent view
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            
        
    }
}

//#Preview {
//    ThemeView()
//}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .oxblood)
    }
}
