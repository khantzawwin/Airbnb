//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by Khant Zaw Win on 11/10/23.
//

import SwiftUI

struct AirbnbListingView: View {
    @StateObject var viewModel = AirbnbListingViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                if viewModel.listings.isEmpty{
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
                else{
                    List(viewModel.listings) { listing in
                        NavigationLink(destination: AirbnbDetailView(model: listing), label: {
                            AirbnbListingCardView(model: listing)
                        })
                    }
                }
            }
            .navigationTitle("Airbnb")
        }
        .onAppear{
            viewModel.fetchListings()
        }
    }
}

