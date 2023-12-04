//
//  PopUpView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 28.11.2023.
//

import SwiftUI

struct PopUpView: View {
    @State private var showingPopover = true

    var body: some View {
        Button("Show Menu") {
            showingPopover = true
        }
        .popover(isPresented: $showingPopover) {
            Text("Your content here")
                .font(.headline)
                .padding()
        }
    }
}

#Preview {
    PopUpView()
}
