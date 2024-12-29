//
//  CancelButton.swift
//  Apple-Frameworks
//
//  Created by Ram, Keshaw on 30/11/24.
//

import SwiftUI

struct CancelButton: View {
    
    @Binding var isShowingDetailView: Bool
        
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    CancelButton(isShowingDetailView: .constant(false))
}
