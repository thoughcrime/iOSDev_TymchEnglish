//
//  WebLinkWithSystemImage.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 10.12.2023.
//

import SwiftUI

struct WebLinkWithSystemImage: View {
    
    var systemImage: String
    var linkText: String
    var urlString: String
    
    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            Link(linkText, destination: URL(string: urlString) ?? URL(fileURLWithPath: ""))
                .font(.title2)
            
        }
    }
}

#Preview {
    WebLinkWithSystemImage(systemImage: "globe", linkText: "test link", urlString: "www.google.com")
}
