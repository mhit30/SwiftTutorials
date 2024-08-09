//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var messageArrIndex = -1
    @State private var imageString = "image"
    @State private var imageNum = -1
    @State private var soundNum = -1
    @State private var audioPlayer: AVAudioPlayer!
    var body: some View {
        
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.pink)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .padding()
            
            Spacer()
            
            Image(imageString)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
      
            
            HStack{
                Button("Show Message") {
                    
                    let messageArr = ["You are awesome!", "You are great!", "You are cool!", "You are fantastic!"]

                    let lastArrIndex = messageArrIndex
                    
                    repeat {
                        messageArrIndex = Int.random(in: 0...messageArr.count-1)
                    } while messageArrIndex == lastArrIndex
    
                    messageString = messageArr[messageArrIndex]
                    
                    let lastImageNum = imageNum
                    
                    repeat {
                        imageNum = Int.random(in: 0...9)
                    } while imageNum == lastImageNum
                    
                    imageString = "image\(imageNum)"
                
                    let lastSoundNum = soundNum
                    
                    repeat {
                        soundNum = Int.random(in: 0...5)
                    } while soundNum == lastSoundNum
                    
                    let soundName = "sound\(soundNum)"
                    
                    guard let soundFile = NSDataAsset(name: soundName) else {
                        print("😡 Could not real file name \(soundName)")
                        return
                    }
                    
                    do {
                        audioPlayer = try AVAudioPlayer(data: soundFile.data)
                        audioPlayer.play()
                    } catch {
                        print("😡 Error: \(error.localizedDescription) creating audioPlayer")
                    }
                }
                .buttonStyle(.borderedProminent)
            
            }
            .padding()
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
