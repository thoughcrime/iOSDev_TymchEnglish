//
//  StartScreenView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct StartScreenVew: View {
    var body: some View {
        ZStack{
            
            BackgroundView()
            
            VStack {
                LogoView(logoRadius: 200)
                    
                Text("TymchEnglish©")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.lightRasbery)
                    .padding(.top, 20)
                
                Text ("English poems, rhymes and chants for kids")
                    .padding(.top)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.lightRasbery)
                
                
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
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .padding(.top, 100)
           
    }
}


