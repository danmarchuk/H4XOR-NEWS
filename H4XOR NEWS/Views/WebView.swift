//
//  WebView.swift
//  H4XOR NEWS
//
//  Created by Данік on 20/01/2023.
//

import Foundation
import WebKit
import SwiftUI



struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = NSMutableURLRequest(url: url)
                uiView.load(request as URLRequest)
            }
        }
    }
    
}
