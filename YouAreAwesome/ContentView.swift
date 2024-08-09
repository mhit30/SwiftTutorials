//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI


struct ContentView: View {
    @State private var messageString = ""
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
            
            HStack{
                Button("Toggle") {
                    let message1 = "You are awesome!"
                    let message2 = "You are great!"
           
                    messageString = (messageString == message1 ? message2 : message1)
                   
                    imageNum += 1
                    
                    if imageNum > 9 {
                        imageNum = 0
                    }
                    
                    imageString = "image\(imageNum)"
                    print(imageString)
                    
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
