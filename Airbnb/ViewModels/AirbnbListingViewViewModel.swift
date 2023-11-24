//
//  AirbnbListingViewViewModel.swift
//  Airbnb
//
//  Created by Khant Zaw Win on 12/10/23.
//

import Foundation

class AirbnbListingViewViewModel : ObservableObject {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchListings() {
        service.getListings {[weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let models):
                    self?.listings = models
                case.failure(let failure):
                    break
                }
            }
        }
    }
}
