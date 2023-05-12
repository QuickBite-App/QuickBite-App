//
//  ForgotPasswordView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 09/05/2023.
//
import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Forgot password?")
                        .font(.system(size: 23))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                    Text("Select which contact details to use to reset your password")
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                }
                Spacer()
            }
            .padding()

            Button(action: {
                // Reset password via SMS
            }) {
                HStack {
                    Image(systemName: "message.fill")
                        .foregroundColor(.green)
                    Text("Via SMS")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("••••••").foregroundColor(.black)
                    Text("1234").foregroundColor(.black)
                }
                .padding()
                .background(Color.clear)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                        )
            }
            .padding()

            Button(action: {
                // Reset password via email
            }) {
                HStack {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(.green)
                    Text("Via email")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("••••").foregroundColor(.black)
                    Text("@gmail.com").foregroundColor(.black)
                }
                .padding()
                .background(Color.clear)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                        )
            }
            .padding(.horizontal)

            Spacer()

            NavigationLink(destination: PasswordResetView()) {
                Text("Next")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .frame(width: 289, height: 72)
                    .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                    .cornerRadius(23.88)
            }
            .navigationBarHidden(true)
        }
    }
}


struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
