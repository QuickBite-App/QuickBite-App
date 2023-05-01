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
                .padding()
            Text("QuickBite")
                .foregroundColor(Color.yellow)
                .font(.system (size: 35))
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 234/255, green: 34/255, blue: 66/255))
        
        //yellow rectangle at bottom colour code
        //.background(Color(red: 255/255, green: 196/255, blue: 46/255))
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
