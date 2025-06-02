//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Thibault Giraudon on 02/06/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    var contryName: String
    var capitalName: String
    let rating: Int
    var body: some View {
        HStack(spacing: 2) {
            VStack(alignment: .leading) {
                Text(contryName)
                    .font(.title2)
                    .foregroundStyle(.blue)
                Text(capitalName)
                    .foregroundStyle(.gray)
            }
            Spacer()
            ForEach(1...rating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundStyle(.orange)
            }
        }
        .padding()
    }
}

#Preview {
    TitleViewSwiftUI(contryName: "Vietnam", capitalName: "Hanoi", rating: 5)
}
