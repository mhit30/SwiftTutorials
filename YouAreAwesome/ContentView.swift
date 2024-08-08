//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohammed Hit on 8/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Yo! "
    var body: some View {
        VStack {
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
               
            
            HStack{
                Button("Awesome") {
                    messageString = "You are awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    messageString = "You are great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 5.0)
       
        }
    }
}

#Preview {
    ContentView()
}
