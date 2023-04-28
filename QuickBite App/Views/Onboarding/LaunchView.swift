//
//  LaunchView.swift
//  QuickBite App
//
//  Created by Flo Yeboah on 28/04/2023.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        VStack {
            Image("quickbitelogo")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 234/255, green: 34/255, blue: 66/255))
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
