//
//  FramWorkGridView.swift
//  Apple-Frameworks
//
//  Created by Ram, Keshaw on 26/11/24.
//

import SwiftUI

struct FramWorkGridView: View {
    
    @StateObject var viewModel = FrameGridViewModel()
    
//    let colunms: [GridItem] = [GridItem(.flexible()),
//                               GridItem(.flexible()),
//                               GridItem(.flexible())
//                                        
//    ]
    
    var body: some View {
        
        NavigationView {
            
                List {
                    
                    ForEach(MockData.frameworks) { framwork in
                        NavigationLink( destination: DetailedFrameWorkView(framwork: framwork, isShowingDetailView: $viewModel.isShowingDetailView)){
                            FramWorktitleView(framwork: framwork)
                        }
                    }
                }
            .navigationTitle("Framwork")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FramWorkGridView()
        .preferredColorScheme(.dark)
}

//struct FramWorktitleView: View {
//    
//    var framwork: Framework
//    
//    var body: some View {
//        
//        VStack {
//            Image(framwork.imageName)
//                .resizable()
//                .frame(width: 90, height: 90)
//            Text(framwork.name)
//                .font(.title2)
//                .fontWeight(.semibold)
//                .scaledToFit()
//                .minimumScaleFactor(0.5)
//        }
//        .padding()
//    }
//}
