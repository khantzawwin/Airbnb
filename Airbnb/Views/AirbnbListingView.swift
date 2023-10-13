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
            List(viewModel.listings) { listing in
                Text(listing.name ?? "-")
            }
        }
        .onAppear{
            viewModel.fetchListings()
        }
    }
}

