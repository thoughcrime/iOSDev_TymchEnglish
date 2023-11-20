//
//  PoemsDetailedView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsDetailedView: View {
    
    var poem = MockData.samplePoem
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "heart")
                            .foregroundStyle(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }).padding()
                }
                HStack {
                    Image(poem.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    Text(poem.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                }.padding()
                
                Text(poem.lyrics)
                    .font(.callout)
                    .fontWeight(.medium)
                    .padding(10)
                    .multilineTextAlignment(.center)
                
                HStack {
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "play.circle")
                            .resizable()
                            .frame(width:44, height: 44)
                            .padding(.trailing, 50)
                    })
                    
                    Link("Watch the video", destination: URL(string:poem.videoLink!)!)
                }
                Spacer()
            }
        }
    }
}
#Preview {
    PoemsDetailedView()
}
