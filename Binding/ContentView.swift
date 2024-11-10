//
//  ContentView.swift
//  Binding
//
//  Created by Tech With Talal on 10/19/24.
//

import SwiftUI

struct ParentView: View {

    @State private var isToggled: Bool = false

    var body: some View {
        VStack {
            Text("Manager says Toggle is \(isToggled ? "ON" : "OFF")")
            ChildView(isToggled: $isToggled)
        }
        .padding()
    }
}

#Preview {
    ParentView()
}

struct ChildView: View {

    @Binding var isToggled: Bool

    var body: some View {
        Toggle("Intern toggles", isOn: $isToggled)
            .padding()
    }
}
