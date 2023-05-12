//

//  OnboardingView.swift

//  QuickBite App

//

//  Created by Flo Yeboah on 28/04/2023.

//


import SwiftUI

struct Onb3View: View {
    let continueButtonAction: () -> Void
    
    var body: some View {

    VStack {

        Image("quickbitelogored")
        Spacer()
        Image("delivery")
        Spacer()
        Text("Deliver to your home")
            .frame(width: 332)
            .foregroundColor(Color(red: 241/255, green: 0/255, blue: 39/255))
            .fontWeight(.bold)
            .font(.system(size: 24))
            .padding(.bottom, 15)
            .multilineTextAlignment(.center)
        Text("Enjoy a fast and smooth delivery at your door step")
            .lineLimit(nil)
            .frame(width: 302)
            .padding(.bottom, 60)
            .font(.subheadline)
            .multilineTextAlignment(.center)
        Image("design")
        Spacer()
        Button(action: continueButtonAction) {
            Text("Get Started")
            .foregroundColor(Color.white)
            .fontWeight(.bold)
            .font(.system(size: 20))
            .frame(width: 289, height: 72)
            .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
            .cornerRadius(23.88)
        }
        Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("onboardingbg"))
    }
}

struct Onb3View_Previews: PreviewProvider {

    static var previews: some View {

        Onb3View(continueButtonAction: {})

    }

}
