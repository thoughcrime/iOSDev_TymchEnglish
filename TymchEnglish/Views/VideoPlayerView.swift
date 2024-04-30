//
//  VideoPlayerView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 13.05.2024.
//

import SwiftUI
import WebKit

// MARK: - WebView to load YouTube
struct YouTubeWebView: UIViewRepresentable {
    var videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: videoID) else { return }
        webView.load(URLRequest(url: youtubeURL))
    }
}

// MARK: - VideoPlayerView to manage and present the video
struct VideoPlayerView: View {
    var videoID: String
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            YouTubeWebView(videoID: videoID)
        }
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
    }
}

#Preview {
    VideoPlayerView(videoID: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", isPresented: .constant(true))
}
