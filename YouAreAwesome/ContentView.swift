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
                    
                    messageString = messageArr[randomNum(lastNum: lastArrIndex, upperBound: messageArr.count-1)]
                    
                    let lastImageNum = imageNum
                    imageString = "image\(randomNum(lastNum: lastImageNum, upperBound: 9))"
                    
                    let lastSoundNum = soundNum
                    playSound(soundName: "sound\(randomNum(lastNum: lastSoundNum, upperBound: 5))")
                }
                .buttonStyle(.borderedProminent)
            
            }
            .padding()
            
            
            
            
        }
    }
    
    func playSound(soundName: String) {
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
    
    func randomNum(lastNum: Int, upperBound: Int) -> Int {
        var newNum: Int;
        repeat {
            newNum = Int.random(in: 0...upperBound)
        } while lastNum == newNum
        return newNum
    }
}

#Preview {
    ContentView()
}
