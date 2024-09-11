import SwiftUI

private struct Resturant: Identifiable {
    var name: String
    var id: String { name }
}

private let restaurants: [Resturant] = [
    Resturant(name: "McDonald's"),
    Resturant(name: "Arby's"),
    Resturant(name: "Wendy's"),
    Resturant(name: "Pizza Hut"),
    Resturant(name: "Culver's")
]

struct ResturantView: View {
    var name: String
    @State private var isFavorite: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.blue)
            HStack {
                Text(name)
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                Text(isFavorite ? "👍" : "👎")
                    .font(.title)
                    .onTapGesture {
                        isFavorite.toggle()
                    }
            }
            .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(restaurants) { restaurant in
                ResturantView(name: restaurant.name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
