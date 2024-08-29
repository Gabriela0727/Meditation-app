//
//  MeditationApp.swift
//  Meditation
//
//  Created by Gabriela Rubio on 3/29/23.
//

import SwiftUI

@main
struct MeditationApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
