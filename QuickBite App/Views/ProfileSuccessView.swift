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
                    .resizable()
                    .accentColor(.white)
                    .frame(width: 60, height: 70)
            }
            .padding()

            VStack {
                Text("Congratulations")
                    .font(.title2)
                    .fontWeight(.bold)
                
            }
            .padding(.bottom)
            
            VStack {
                Text("You have successfully activated your profile!")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.bottom, 70)

            
            HStack {
                NavigationLink(destination: HomeView()) {
                    Button(action: {
                               print("Button tapped!")
                           }) {
                               Text("Go to Home")
                           }
                           .foregroundColor(Color.white)
                           .fontWeight(.bold)
                           .font(.system(size: 20))
                           .frame(width: 289, height: 72)
                           .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                           .cornerRadius(23.88)
                }
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
