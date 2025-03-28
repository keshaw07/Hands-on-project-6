//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Ram, Keshaw on 30/11/24.
//

import Foundation
import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    
    let url : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
        UIViewControllerRepresentableContext<SafariView>) {}
}
