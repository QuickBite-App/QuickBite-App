//
//  Onb1View.swift
//  QuickBite App
//
//  Created by Flo Yeboah on 01/05/2023.
//
import SwiftUI

struct Onb1View: View {
    var body: some View {
        VStack {
            Image("quickbitelogored")
            Spacer()
            Image("food")
            Spacer()
            Text("Your comfort food lies here")
                .frame(width: 332)
                .foregroundColor(Color(red: 241/255, green: 0/255, blue: 39/255))
                .fontWeight(.bold)
                .font(.system(size: 24))
                .padding(.bottom, 15)
            Text("Order your favourite meal and taste greatness")
                .padding(.bottom, 60)
                .font(.subheadline)
            Image("design")
            Spacer()
            Button {

            } label: {
                VStack{
                Text("Continue")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.system(size: 20))
                }
                .frame(width: 289, height: 72)
                .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                .cornerRadius(23.88)
            }
            Button {

            } label: {
                Text("Skip")
                    .foregroundColor(Color(red: 151/255, green: 151/255, blue: 151/255))
            }
            .padding(.top)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("onboardingbg"))

        }
    }

    struct Onb1View_Previews: PreviewProvider {
        static var previews: some View {
            Onb1View()
        }
    }
