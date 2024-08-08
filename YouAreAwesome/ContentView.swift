//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI


struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        
        
        VStack {
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
                    if messageString == message1 {
                        messageString = message2
                    } else {
                        messageString = message1
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
