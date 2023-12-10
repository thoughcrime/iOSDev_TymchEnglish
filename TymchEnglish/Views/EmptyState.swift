//
//  EmptyState.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 03.12.2023.
//

import SwiftUI

struct EmptyState: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "book.pages")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.lightRasbery.opacity(0.8), .pinkLilac.opacity(0.5))
                
                Text("You have no items in you favourite list.\n How about adding some for your convinience?")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }.offset(CGSize(width: 0, height: -50))
            
        }
    }
}

#Preview {
    EmptyState()
}
