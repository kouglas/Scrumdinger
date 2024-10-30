//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Kari Douglas on 10/30/24.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text("An error has occurred!")
                .font(.title)
                .padding(.bottom)
            Text(errorWrapper.error.localizedDescription)
                .font(.headline)
            Text(errorWrapper.guidance)
                .font(.caption)
                .padding(.top)
            Spacer()
        }
        .background(.ultraThinMaterial)
        .cornerRadius(16)
        .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }
    
    static var wrapper: ErrorWrapper {
            ErrorWrapper(error: SampleError.errorRequired,
                         guidance: "You can safely ignore this error.")
        }
    
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}

//#Preview {
//    enum SampleError: Error {
//        case errorRequired
//    }
//    var wrapper: ErrorWrapper {
//        ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error")
//    }
//    ErrorView(errorWrapper: wrapper)
//}
