//
//  BackgroundView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.white, .hummingBird],
                       startPoint:.topLeading,
                       endPoint:.bottomTrailing)
        
//        Dark mode Test
//                LinearGradient(colors: [.black, .pinkLilac],
//                               startPoint:.topLeading,
//                               endPoint:.bottomTrailing)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
