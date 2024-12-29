//
//  FrameGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ram, Keshaw on 30/11/24.
//

import Foundation
import SwiftUI

final class FrameGridViewModel: ObservableObject {
    
    var selectFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let colunms: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
                                        
    ]
    
}
