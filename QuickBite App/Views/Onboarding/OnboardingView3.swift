//
//  OnboardingView.swift
//  QuickBite App
//
//  Created by Flo Yeboah on 28/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
    VStack {
    Image("quickbitelogored")
    Image("delivery")
    
        Text("Deliver to your home")
            .foregroundColor(Color(red: 241/255, green: 0/255, blue: 39/255))
            .fontWeight(.bold)
            .font(.system(size: 24))
        
        Text("Enjoy a fast and smooth delivery at your door step")
            .multilineTextAlignment(.center)
        
        Image("design")
            
            Button {
                
            } label: {
                VStack{
                Text("Get Started")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.system(size: 20))
                }
                .frame(width: 289, height: 72)
                .background(Color(red: 234/255, green: 34/255, blue: 66/255))
                .cornerRadius(23.88)
            }
        
        Image("Darkline")

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("onboardingbg"))
    }
}

struct OnboardingView3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
