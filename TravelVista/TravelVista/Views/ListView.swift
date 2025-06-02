//
//  ListView.swift
//  TravelVista
//
//  Created by Thibault Giraudon on 02/06/2025.
//

import SwiftUI

struct ListView: View {
    var regions: [Region] = Service().load("Source.json")
    var body: some View {
        List(regions, id: \.self) { region in
            Section(region.name) {
                ForEach(region.countries, id: \.self) { country in
                    HStack {
                        Image(country.pictureName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(country.name)
                                .foregroundStyle(.blue)
                            Text(country.capital)
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Text("\(country.rate)")
                        Image(systemName: "star.fill")
                            .foregroundStyle(.orange)
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
}
