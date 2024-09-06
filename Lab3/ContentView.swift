//
//  ContentView.swift
//  Lab3
//
//  Created by Asher Antrim on 9/6/24.
//

import SwiftUI


private struct Resturant: Identifiable {
    var name: String
    var id: String { name }
}
private let restaurants: [Resturant] = [
    Resturant(name: "McDonalds's"),
    Resturant(name: "Arby's"),
    Resturant(name: "Wendy's"),
    Resturant(name: "Pizza Hut"),
    Resturant(name: "Culver's")]
    
struct ResturantView: View {
    var body: some View {
        ForEach(restaurants) { Resturant in
            ZStack {
                RoundedRectanglesStandard()
                HStack {
                    Text(Resturant.name)
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    EmojiTap()
                }
                .padding()
            }
        }
    }
}




struct ContentView: View {
    var body: some View {
        VStack {
            ResturantView()
        }
        .padding()
    }
}

struct RoundedRectanglesStandard: View {
    var body: some View {
        RoundedRectangle
            .init(cornerRadius: 25)
            .fill(Color.blue)
    }
}

struct EmojiTap: View {
    @State private var emoji: Text = 👎
    
    var body: some View {
        Text(emoji)
            .onTapGesture(count: 1) {
                emoji = 👍
            }
    }
}

#Preview {
    ContentView()
}
