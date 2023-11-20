//
//  ContentView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 09.10.2023.
//

import SwiftUI

struct StartScreenVew: View {
    var body: some View {
        ZStack{
            
            LinearGradient(colors: [.white, .hummingBird],
                           startPoint:.topLeading,
                           endPoint:.bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                LogoView(logoRadius: 200)
                    
                Text("TymchEnglish©")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.lightRasbery)
                    .padding(.top, 20)
                
                
                    Spacer()
                
                Button(action: {
                    
                }, label: {
                    
                    AppButton(text: "Start")
                })
                Spacer()
    
            }
        }
        
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        StartScreenVew()
    }
}


struct LogoView: View {
    
    var logoRadius: Double
    
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: logoRadius, height: logoRadius)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:5, y:5)
            .padding(.top, 100)
    }
}
