// Taina Saenz
// Homework 15
// November 25, 2025

import SwiftUI

struct HalloweenView: View {
    @State private var selectedItem = "None"
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.black, .orange], startPoint: .topLeading, endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("This is my Halloween List (Long Press)")
                    .foregroundColor(.orange)
                    .contextMenu {
                        Button(action: {
                            selectedItem = "Cat"
                        }) {
                            Text("Cat")
                        }
                        Button(action: {
                            selectedItem = "Eyes"
                        }) {
                            Text("Eyes")
                        }
                        Button(action: {
                            selectedItem = "Masks"
                        }) {
                            Text("Masks")
                        }
                    }
                if selectedItem == "Cat" {
                    Image(systemName: "cat")
                } else if selectedItem == "Eyes" {
                    Image(systemName: "eyes.inverse")
                } else if selectedItem == "Masks" {
                    Image(systemName: "theatermasks")
                }
            }
            .foregroundColor(.orange)
            .imageScale(.large)
        }
    }
}

struct ChristmasView: View {
    @State private var selectedItem = "None"
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.red, .green], startPoint: .topLeading, endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("This is my Christmas List (Long Press)")
                    .foregroundColor(.white)
                    .contextMenu {
                        Button(action: {
                            selectedItem = "Gift"
                        }) {
                            Text("Gift")
                        }
                        Button(action: {
                            selectedItem = "Bell"
                        }) {
                            Text("Bell")
                        }
                        Button(action: {
                            selectedItem = "Star"
                        }) {
                            Text("Star")
                        }
                    }
                if selectedItem == "Gift" {
                    Image(systemName: "gift")
                } else if selectedItem == "Bell" {
                    Image(systemName: "bell")
                } else if selectedItem == "Star" {
                    Image(systemName: "star")
                }
            }
            .foregroundColor(.white)
            .imageScale(.large)
        }
    }
}

struct NewYearsView: View {
    @State private var selectedItem = "None"
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .purple, .black], startPoint: .top, endPoint: .bottom)
            
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("This is my New Year's List (Long Press)")
                    .foregroundColor(.yellow)
                    .contextMenu {
                        Button(action: {
                            selectedItem = "Party Popper"
                        }) {
                            Text("Party Popper")
                        }
                        Button(action: {
                            selectedItem = "Clock"
                        }) {
                            Text("Clock")
                        }
                        Button(action: {
                            selectedItem = "Calendar"
                        }) {
                            Text("Calendar")
                        }
                    }
                if selectedItem == "Party Popper" {
                    Image(systemName: "party.popper")
                } else if selectedItem == "Clock" {
                    Image(systemName: "clock")
                } else if selectedItem == "Calendar" {
                    Image(systemName: "calendar")
                }
            }
            .foregroundColor(.yellow)
            .imageScale(.large)
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            HalloweenView().tabItem {
                Image(systemName: "moon.stars")
                Text("Halloween")
            }
            ChristmasView().tabItem {
                Image(systemName: "snowflake")
                Text("Christmas")
            }
            NewYearsView().tabItem {
                Image(systemName: "fireworks")
                Text("New Years")
            }
        }
    }
}

#Preview {
    ContentView()
}
