//
//  DisclosureGroupsView.swift
//  ChapterThree
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct DisclosureGroupsView: View {
    @State private var showplanets = true
    var body: some View {
        VStack {
                DisclosureGroup(isExpanded: $showplanets) {
                    Text("Mercury")
                    Text("Venus")
                    DisclosureGroup("Earth") {
                        Text("North America")
                        Text("South America")
                        Text("Europe")
                        Text("Africa")
                        Text("Asia")
                        Text("Antarctica")
                        Text("Oceania")
        }
        } label: {
                    Text("Planets")
                }
            }.padding()
    }
}

#Preview {
    DisclosureGroupsView()
}
