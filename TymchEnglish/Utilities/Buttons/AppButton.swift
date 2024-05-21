//
//  AppButton.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 17.11.2023.
//

import SwiftUI

struct AppButton: View {
    
    var text:String
    var width:CGFloat? = 280
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text(text)
            .frame(width: width, height: 50)
            .background(colorScheme == .dark ? Color.black : Color.white)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(.lightRasbery)
            .cornerRadius(10)
            .shadow(radius: 5, x:3, y:3)
            .overlay {
                RoundedRectangle(cornerRadius: 10).stroke(.pinkLilac, lineWidth: 2)
            }
    }
}

#Preview {
    AppButton(text: "Test Button")
}
