//
//  ResourceNotFound.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 10.12.2023.
//

import SwiftUI

struct ResourceNotFound: View {
    var body: some View {
        VStack{
            Text ("404")
                .font(.largeTitle)
                .bold()
            Text ("Not Found")
                .font(.title)
                .foregroundStyle(.secondary)
            Text ("The resource requested could nor be found!")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)

    }
}

#Preview {
    ResourceNotFound()
}
