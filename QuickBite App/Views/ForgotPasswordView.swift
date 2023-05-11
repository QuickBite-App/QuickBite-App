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
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.black)
                        .font(.title)
                }
                Text("Forgot password?")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
            }
            .padding()
            
            Text("Select which contact details to use to reset your password")
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
            .padding()
            
            Spacer()
            
            NavigationLink(destination: PasswordResetView()) {
                Text("Next")
                .frame(width: 289, height: 72)
                                    .background(Color.red)
                                    .cornerRadius(23.88)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .padding(.bottom, 50)
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
