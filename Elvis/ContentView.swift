//
//  ContentView.swift
//  Elvis
//
//  Created by Richard Gagg on 9/1/2025.
//

import SwiftUI

struct ContentView: View {
  @State private var message: String = ""
  @State private var imageName: String = ""
  
    var body: some View {
        VStack {
          Text("What's So Funny 'Bout")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.purple)
          
          Spacer()
          
          Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
          
          Text(message)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.purple)
          
          Spacer()
          
          HStack {
            Button {
              imageName = "peacesign"
              message = "Peace"
            } label: {
              Text("Peace")
            }
            
            Button {
              imageName = "heart"
              message = "Love"
            } label: {
              Text("Love")
            }
            
            Button {
              imageName = "lightbulb"
              message = "Understanding"
            } label: {
              Text("Understanding")
            }
          }
          .buttonStyle(.borderedProminent)
          .font(.title2)
          .tint(.purple)
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
