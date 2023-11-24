//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by Khant Zaw Win on 11/10/23.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model: AirbnbListing
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .frame(width: 100, height: 100)
                .scaledToFit()
                .clipped()
            
            VStack{
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(model.description ?? "Listing")
                    .foregroundColor(Color(.secondaryLabel))
                    .lineLimit(3)
                    .font(.body)
            }
            
            
        }
    }
}
