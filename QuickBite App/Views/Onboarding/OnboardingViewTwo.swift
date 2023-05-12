//
//  Onb2View.swift
//  QuickBite App
//
//  Created by Flo Yeboah on 01/05/2023.
//
import SwiftUI

struct Onb2View: View {
    let continueButtonAction: () -> Void
    let skipButtonAction: () -> Void
    
    var body: some View {
        VStack {
            Image("quickbitelogored")
            Spacer()
            Image("Foodframe")
            Spacer()
            Text("Taste fresh delicious meals anytime")
                .frame(width: 332)
                .foregroundColor(Color(red: 241/255, green: 0/255, blue: 39/255))
                .fontWeight(.bold)
                .font(.system(size: 24))
                .padding(.bottom, 15)
                .multilineTextAlignment(.center)
            Text("We provide well prepared meal at all hours")
                .lineLimit(nil)
                .frame(width: 302)
                .padding(.bottom, 60)
                .font(.subheadline)
                .multilineTextAlignment(.center)
             
            Image("design")
            Spacer()
            Button(action: continueButtonAction) {
                Text("Continue")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .frame(width: 289, height: 72)
                .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                .cornerRadius(23.88)
            }
            Button(action: skipButtonAction) {
                Text("Skip")
                    .foregroundColor(Color(red: 151/255, green: 151/255, blue: 151/255))
            }
            .padding(.top)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("onboardingbg"))
    }
}

    struct Onb2View_Previews: PreviewProvider {
        static var previews: some View {
            Onb2View(continueButtonAction: {}, skipButtonAction: {})
        }
    }
