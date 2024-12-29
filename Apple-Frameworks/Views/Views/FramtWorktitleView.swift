//
//  FramtWorktitleView.swift
//  Apple-Frameworks
//
//  Created by Ram, Keshaw on 30/11/24.
//

import SwiftUI

struct FramWorktitleView: View {
    
    var framwork: Framework
    
    var body: some View {
        
        HStack {
            Image(framwork.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framwork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
       
    }
}

#Preview {
    FramWorktitleView(framwork: MockData.sampleFramework)
}
