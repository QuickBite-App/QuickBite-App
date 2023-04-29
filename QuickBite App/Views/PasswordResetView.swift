//
//  PasswordResetView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 29/04/2023.
//

import SwiftUI

struct PasswordResetView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    @State private var showPassword = false
    @State private var showProfileSuccessView = false

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }) {
                                    Image(systemName: "chevron.backward")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .padding(.bottom, 100)
                }
                
                VStack {
                    Text("Reset your password here")
                        .font(.system(size: 23))
                            .fontWeight(.bold)
                    
                    Text("Select which contact details to use to reset your password")
                        .padding()
                        .frame(width: 300, height: 90, alignment: .center)
                }
                Spacer()
            }
            .padding()
            
            Spacer()
            ZStack(alignment: .trailing) {
                            TextField("New Password", text: $newPassword)
                                .font(.system(size: 17, weight: .bold))
                                .frame(width: 370)
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .frame(height: 60)
                                .padding()
                            
                            if showPassword {
                                TextField("New Password", text: $newPassword)
                                    .font(.system(size: 20, weight: .bold))
                                    .frame(width: 370)
                            }
                            
                            Button(action: {
                                showPassword.toggle()
                            }) {
                                Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(showPassword ? .gray : .green)
                                    .padding(.trailing, 30)
                            }
                        }
            ZStack(alignment: .trailing) {
                            TextField("Confirm Password", text: $confirmPassword)
                                .font(.system(size: 17, weight: .bold))
                                .frame(width: 370)
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .frame(height: 60)
                                .padding()
                            
                            if showPassword {
                                TextField("Confirm Password", text: $confirmPassword)
                                    .font(.system(size: 20, weight: .bold))
                                    .frame(width: 370)
                            }
                            
                            Button(action: {
                                showPassword.toggle()
                            }) {
                                Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(showPassword ? .gray : .green)
                                    .padding(.trailing, 30)
                            }
                        }
            Spacer()
            
            Button(action: {
                // Navigate to "Profile Success" view
                self.presentationMode.wrappedValue.dismiss() // Dismiss the current view
                self.showProfileSuccessView.toggle() // Show "Profile Success" view
            }) {
                Text("Next")
                    .frame(width: 289, height: 72)
                    .background(Color.red)
                    .cornerRadius(23.88)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.bottom, 50)
            }
            .sheet(isPresented: $showProfileSuccessView) {
                ProfileSuccessView()
            }
        }
    }
}

struct PasswordResetView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordResetView()
    }
}
