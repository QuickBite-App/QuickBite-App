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
                VStack(alignment: .leading) {
                    Text("Reset your password")
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
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .frame(width: 289, height: 72)
                    .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                    .cornerRadius(23.88)
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
