//
//  LaunchView.swift
//  QuickBite App
//
//  Created by Flo Yeboah on 28/04/2023.
//
import SwiftUI

struct LaunchView: View {
    @State var onBoardingState: Int = 0
    
    var body: some View {
        VStack {
            Image("quickbitelogo")
                .padding()
            Text("QuickBite")
                .foregroundColor(Color.yellow)
                .font(.system (size: 35))
                .fontWeight(.semibold)
            bottomButton
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

extension LaunchView {
    private var bottomButton: some View {
        Button {

        } label: {

            VStack{
            Text("Get Started")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.system(size: 20))
                }
                .frame(width: 289, height: 72)
                .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                .cornerRadius(23.88)
        }
    }
}
