//
//  ContentView.swift
//  PathReflection
//
//  Created by Tayler Kleinow on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Step 1 - imbed in a GeometryReader
        GeometryReader { g in
            // Step 2 - imbed in a ZStack
            ZStack {
                // Step 3 - imbed in a VStack
                VStack {
                    Text("Awsome Path Demo!")
                        .padding()
                        .frame(height: 50, alignment: .center)
                    // Step 4 - add a Path
                    Path { path in
                        // Step 5 - add the start point
                        path.move(to: CGPoint(x: g.size.width / 5, y: 200))
                        // Step 6 - Draw your boat
                        path.addLine(to: CGPoint(x: 250, y: 200))
                        path.addLine(to: CGPoint(x: 200, y: 250))
                        path.addLine(to: CGPoint(x: 120, y: 250))
                        path.closeSubpath()
                        // Step 7 - Draw your sail
                        path.move(to: CGPoint(x: g.size.width / 2, y: 200))
                        path.addLine(to: CGPoint(x: g.size.width / 2, y: 120))
                        path.addLine(to: CGPoint(x: g.size.width / 2 + 40, y: 160))
                        path.addLine(to: CGPoint(x: g.size.width / 2 + 5, y: 160))
                        path.addLine(to: CGPoint(x: g.size.width / 2 + 5, y: 200))
                        // Step 8 - add a .fill()
                    }.fill()
                }
            }
            // Step ? - add a background with a light blue color
        }.background(Color.teal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
