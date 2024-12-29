//
//  DetailedFrameWorkView.swift
//  Apple-Frameworks
//
//  Created by Ram, Keshaw on 27/11/24.
//

import SwiftUI

struct DetailedFrameWorkView: View {
    
    var framwork: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariview = false
    
    var body: some View {
        
        VStack {
//            HStack {
//                Spacer()
//                Button {
//                    isShowingDetailView = false
//                }label: {
//                    Image(systemName: "xmark")
//                        .foregroundColor(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44, height: 44)
//                }
//            }
//            .padding()
            
           // CancelButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FramWorktitleView(framwork: framwork)
            Text(framwork.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariview = true
            }label: {
               // AFButton(title: "Learn More")
                     Label("Leran More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariview, content: {
            SafariView(url: URL(string: framwork.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    DetailedFrameWorkView(framwork: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
