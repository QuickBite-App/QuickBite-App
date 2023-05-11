//
//  Home.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 09/05/2023.
//
import SwiftUI

struct SignOption: View {
    @State private var signInSelected = false
    @State private var isNavigatingToSignIn = false
    @State private var isNavigatingToSignUp = false

    var body: some View {
        VStack {
            Image("Group2274")
                .resizable()
                .frame(width: 60, height: 60)
                .padding()

            Spacer()

            Image("Restaurant")
                .resizable()
                .scaledToFit()

            Spacer()

            NavigationLink(destination: SignInView(), isActive: $isNavigatingToSignIn) {
                Button(action: {
                    self.signInSelected = true
                    self.isNavigatingToSignIn = true
                }) {
                    HStack {
                        Text("Sign in")
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(signInSelected ? .white : .red)
                    .padding()
                    .background(signInSelected ? Color.red : Color.clear)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.red, lineWidth: 1)
                    )
                }
            }
            .padding(.horizontal)

            NavigationLink(destination: SignUpView(), isActive: $isNavigatingToSignUp) {
                Button(action: {
                    self.signInSelected = false
                    self.isNavigatingToSignUp = true
                }) {
                    HStack {
                        Text("Sign up")
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(!signInSelected ? .white : .red)
                    .padding()
                    .background(!signInSelected ? Color.red : Color.clear)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.red, lineWidth: 1)
                    )
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        SignOption()
    }
}
