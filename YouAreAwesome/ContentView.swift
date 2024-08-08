//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    var body: some View {
        
        
        
        VStack {
            
            Group {
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
                Text("I am a text view!")
            }.font(.title)
            .fontWeight(.heavy)
       
            
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color("Gold-BC"))
                .padding()
                .background(Color("Maroon-BC"))
                .cornerRadius(15)
            Spacer()
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .border(.orange, width:1)
                .padding()
            
            Spacer()
            
            Divider()
                .background(.black)
                .padding()
                .frame(width:150.0)
            
            
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
