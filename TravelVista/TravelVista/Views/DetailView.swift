//
//  DetailView.swift
//  TravelVista
//
//  Created by Thibault Giraudon on 02/06/2025.
//

import SwiftUI
import UIKit

struct DetailView: UIViewControllerRepresentable {
    var country: Country
    
    func makeUIViewController(context: Context) -> DetailViewController {
        guard let viewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError()
        }
        viewController.country = self.country
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
        
    }
}

#Preview {
    NavigationStack {
        DetailView(country: Country(name: "Norvège", capital: "Oslo", description: "", rate: 5, pictureName: "norvege", coordinates: Coordinates(latitude: 59.9139, longitude: 10.7522)))
    }
}
