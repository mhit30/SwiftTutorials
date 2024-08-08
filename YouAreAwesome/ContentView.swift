//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    var body: some View {
        
        
        
        VStack {
            Spacer()
            Image(systemName: "speaker.wave.2", variableValue: 0.6)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.538, saturation: 0.773, brightness: 0.893))
                .shadow(color: .gray, radius:30, x:20, y:20)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30).stroke(.teal, lineWidth: 1)
                )
                .padding()
                
                
          
           
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
                Button("Awesome") {
                    messageString = "You are awesome!"
                }
                .buttonStyle(.borderedProminent)
                Spacer()
                Button("Great") {
                    messageString = "You are great!"
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
