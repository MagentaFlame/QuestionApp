//
//  ContentView.swift
//  QuestionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var correct = ""
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Who has the SKZOO of a ferret?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                    Button("Hyunjin") {
                        correct = "That's correct!"
                    }
                    Button("Seungmin") {
                        correct = "Try again"
                    }
                    .padding(10)
                    .background(Color.red)
                    .font(.title2)
                    Button("Lee Know") {
                        correct = "Not quite"
                    }
                    Text(correct)
                        .padding()
                    NavigationLink(destination: Question2View()) {
                        Text("Next")
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
