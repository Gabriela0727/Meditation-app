//
//  MeditationViewModel.swift
//  Meditation
//
//  Created by Gabriela Rubio on 3/29/23.
//

import Foundation

final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
        
        
    }
}
struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "10 Minute Relaxing Meditation", description: "Clear your mind and relax your body. Get a few minutes for a quick breath.", duration: 604, track: "meditation1", image: "image-feather")
    

}
