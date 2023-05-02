//
//  ProfileSuccessView.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 02/05/2023.
//

import SwiftUI

struct ProfileSuccessView: View {
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill(Color.green)
                    .frame(width: 170, height: 170)
                Image("Path")
                    .accentColor(.white)
                    .frame(width: 60, height: 70)
            }

            VStack {
                Text("Congratulations")
                    .font(.title2)
                    .fontWeight(.bold)
                
            }
            .padding(.bottom)
            
            VStack {
                Text("You have successfully activated your profile!")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.bottom, 70)
            
            HStack {
                Button(action: {
                           print("Button tapped!")
                       }) {
                           Text("Order Now")
                       }
                       .frame(width: 270, height: 70)
                       .background(Color.red)
                       .cornerRadius(24.88)
                       .foregroundColor(.white)
                       .fontWeight(.bold)
                       .font(.system(size: 20))
            }
            .padding()
            
        }
    }
}

struct ProfileSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSuccessView()
    }
}
