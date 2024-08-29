//
//  ContentView.swift
//  Meditation
//
//  Created by Gabriela Rubio on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}
