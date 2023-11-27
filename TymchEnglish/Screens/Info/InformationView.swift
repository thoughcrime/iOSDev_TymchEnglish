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
                Text ("Stay Connected")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Image(systemName: "globe")
                    Link("Tymch English", destination: URL(string: "https://www.instagram.com/tymch_english/")!)
                }
                    
            }
        }
    }
}

#Preview {
    InformationView()
}
