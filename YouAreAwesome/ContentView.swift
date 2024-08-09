//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI


struct ContentView: View {
    @State private var messageArr = ["","You are awesome!", "You are great!", "You are cool!", "You are fantastic!"]
    @State private var messageArrIndex = 0
    @State private var imageString = "image"
    @State private var imageNum = 0
    var body: some View {
        
        
        VStack {
            
            Image(imageString)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Text(messageArr[messageArrIndex])
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.pink)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .padding()
            
            Spacer()
            
            HStack{
                Button("Show Message") {
                    
                    messageArrIndex += 1
                    imageNum += 1
                    
                    if messageArrIndex > messageArr.count - 1 {
                        messageArrIndex = 1
                    }
                    if imageNum > 9 {
                        imageNum = 0
                    }
                    
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
