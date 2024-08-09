//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI


struct ContentView: View {
    @State private var messageString = ""
    @State private var messageArrIndex = -1
    @State private var imageString = "image"
    @State private var imageNum = -1
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

                    var lastArrIndex = messageArrIndex
                    
                    repeat {
                        messageArrIndex = Int.random(in: 0...messageArr.count-1)
                    } while messageArrIndex == lastArrIndex
    
                    messageString = messageArr[messageArrIndex]
                    
                    var lastImageNum = imageNum
                    
                    repeat {
                        imageNum = Int.random(in: 0...9)
                    } while imageNum == lastImageNum
                    
                    imageString = "image\(imageNum)"
                
                    
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
