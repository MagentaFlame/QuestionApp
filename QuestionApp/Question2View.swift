//
//  Question2View.swift
//  QuestionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct Question2View: View {
    @State private var correct = ""
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Who said the famous line 'STAAAAA'?")
                    Button("Bang Chan") {
                        correct = "Not quite"
                    }
                    Button("IN") {
                        correct = "Try again"
                    }
                    Button("Seungmin") {
                        correct = "That's correct!"
                    }
                    Text(correct)
                        .padding()
                    NavigationLink(destination: Question3View()) {
                        Text("Next")
                    }
                }
            }
        }
    }
}

#Preview {
    Question2View()
}
