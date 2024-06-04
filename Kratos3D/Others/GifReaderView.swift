//
//  GifReaderView.swift
//  Kratos3D
//
//  Created by Burak Satır on 2.06.2024.
//

import SwiftUI
import WebKit

struct GifReaderView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webview = WKWebView()
        
        // WebView background black
        webview.isOpaque = false
        webview.backgroundColor = .black
        webview.scrollView.backgroundColor = .black
        
        if let url = Bundle.main.url(forResource: "launch_gif", withExtension: "gif"),
           let data = try? Data(contentsOf: url) {
            webview.load(data,
                         mimeType: "image/gif",
                         characterEncodingName: "UTF-8",
                         baseURL: url.deletingLastPathComponent())
        } else {
            print("Error: Unable to load the file")
        }
        
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}

struct GifReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GifReaderView()
    }
}

