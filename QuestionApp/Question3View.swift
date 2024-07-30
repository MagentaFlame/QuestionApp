//
//  Question3View.swift
//  QuestionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct Question3View: View {
    @State private var correct = ""
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Who is the one who is 'a part of every girl group'?")
                    Button("Felix") {
                        correct = "Not quite"
                    }
                    Button("Changbin") {
                        correct = "That's correct!"
                    }
                    Button("Han") {
                        correct = "Try again"
                    }
                    Text(correct)
                        .padding()
                    NavigationLink(destination: ContentView()) {
                        Text("Try Again?")
                    }
                }
            }
        }
    }
}

#Preview {
    Question3View()
}
