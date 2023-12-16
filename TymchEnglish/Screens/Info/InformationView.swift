//
//  InformationView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        
        ZStack {
            BackgroundView()
            VStack {
                LogoView(logoRadius: 70)
                Text ("Stay Connected")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Text ("Hi! We're a team of passionate English teachers known as **Tymch English**. We've crafted this app as a handy tool to simplify a teacher's life, offering a curated collection of poems and chants readily available. Stay connected with us on social media:")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                WebLinkWithSystemImage(systemImage: "globe", linkText: "Tymch English", urlString: "https://www.instagram.com/tymch_english/")
                Text (try! AttributedString(markdown: "Or feel free to reach out with any suggestions you might have at:\n tymchenglish@gmail.com"))
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                
            Text ("We'd love to hear from you!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                    Spacer()
                    Spacer()
            }
        }
    }
}

#Preview {
    InformationView()
}


