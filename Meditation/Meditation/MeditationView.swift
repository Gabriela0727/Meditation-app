//
//  MeditationView.swift
//  Meditation
//
//  Created by Gabriela Rubio on 3/29/23.
//

import SwiftUI

struct MeditationView: View {
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    
    var body: some View {
        VStack {
            //MARK: image
            
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height:UIScreen.main.bounds.height / 3)
            
            // MARK: Meditation Details
            
            ZStack {
                // MARK: Background
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
              
                
               VStack(alignment: .leading, spacing: 24) {
                    // MARK: type and duration
                    
                    VStack(alignment: .leading, spacing: 8) {
                      Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? "N/A")
                        
                        //my formatter: DateComponentFormatter was failing to read as a string with the lines of code below, so I changed it to the code above.
                        
                        //Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration)??
                       //meditationVM.meditation.duration.formatted() + "S")
                       
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.9)
                    
                    //MARK: Title
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    // MARK: play Button
                    Button {
                        showPlayer = true
                        
                    } label: {
                        Label("play", systemImage: "Play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                        
                    }
                    
                    //MARK: Description
                    
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height:UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data
    )
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
            .environmentObject(AudioManager())
    }
}
