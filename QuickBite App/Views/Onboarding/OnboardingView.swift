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
            Image("quickbitelogo")
            Text("sssh")
            Button {
                
            } label: {
                Text("Skip")
                    .foregroundColor(Color(red: 151/255, green: 151/255, blue: 151/255))
            }
            
            
            Button {
                
            } label: {
                VStack{
                    Text("Continue")
                }
                .frame(maxWidth: .infinity, maxHeight: 72)
                .background(Color(red: 234/255, green: 34/255, blue: 66/255))
                .cornerRadius(20)
                .padding(.horizontal, 40)
               
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("onboardingbg"))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
